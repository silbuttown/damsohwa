#include <SoftwareSerial.h>
#include <Servo.h>


Servo myservo;
// 모바일 HostSpot의 ID와 패스워드 (변경할 부분)
const String SSID = "jyp";
const String PASSWORD = "12345678";
// 서버주소와 포트 (변경할 부분)
const String SERVER_IP = "192.168.137.1";
const String SERVER_PORT = "8085";

// AT 명령 저장
String cmd = "";
// 전송 데이터 저장
String sendData = "";
// WiFi 접속 실패 여부
boolean FAIL_8266 = false;


// TX, RX
SoftwareSerial esp(3, 2);
int Lcoffee = 0;
int coffee = 0;
void setup() {


  
  Serial.println("Start module connection");
  do {
    Serial.begin(9600);
    esp.begin(9600);
    // ESP8266 모듈 재시작
    esp.println("AT+RST");
    delay(1000);
    // 만약 재시작되었다면
    if (esp.find("ready")) {
      Serial.println("Module ready");
      // ESP8266 모듈의 모드를 듀얼모드로 설정 (클라이언트)
      esp.println("AT+CWMODE=1");
      delay(2000);
      // AP에 접속되면
      if (cwJoinAP()) {
        Serial.println("AP successful");
        FAIL_8266 = false;
        delay(5000);
        Serial.println("Start buffer initialization");
        while (esp.available() > 0) {
          char a = esp.read();
          Serial.write(a);
        }
        Serial.println();
        Serial.println("Buffer initialization terminated");
      } else {
        Serial.println("AP connection failure");
        delay(500);
        FAIL_8266 = true;
      }
    } else {
      Serial.println("Module connection failure");
      delay(500);
      FAIL_8266 = true;
    }
  } while (FAIL_8266);
  Serial.println("Module connection complete");
}

boolean a = true;
String message = "";
int emp_no = 7;

void loop() {

  Serial.println("Check Start");
  Serial.println("coffee : " + (String)coffee);
  Serial.println("Lcoffee : " + (String)Lcoffee);
  if (coffee > Lcoffee) {
    Serial.println("서보모터 동작");
    myservo.attach(10);
    myservo.write(20);
    delay(1000);
    myservo.write(0);
    delay(1000);

    Serial.println("서보모터 동작완료");
    myservo.detach();
  }
  Lcoffee = coffee;
  delay(2000);
  Serial.println("Check end");
  Serial.println("coffee : " + (String)coffee);
  Serial.println("Lcoffee : " + (String)Lcoffee);
  delay(2000);
  sendDataToServer(message);
}

void sendDataToServer(String data) {
  Serial.println("Start the data transfer part");
  cmd = "AT+CIPSTART=\"TCP\",\"" + SERVER_IP + "\"," + SERVER_PORT + "\r\n";
  Serial.println("Attempt to connect to server");
  esp.println(cmd);
  // 웹 서버에 접속되면
  if (esp.find("OK")) {
    Serial.println("Server connection successful");
  } else {
    Serial.println("Server connection failed");
  }

  // 서버로 GET 메시지 전송
  //  cmd = "GET /Please/please.jsp?a=";

  //메세지 받기
  cmd = "GET /TaskTop_ing/Coffee.do?EMP_NO=";
  cmd += emp_no;
  cmd += "\r\nConnection: close\r\n\r\n";

  Serial.println(cmd);
  esp.print("AT+CIPSEND="); // = mySerial로 요청하는거랑 같음
  esp.println(cmd.length());
  if (esp.find("OK")) {
    Serial.println("Ready to send to server");
  } else {
    Serial.println("Failed to prepare to send to server");
  }
  esp.println(cmd);

  //데이터 전송이 완료되면
  if (esp.find("OK")) {
    Serial.println("Data transfer successful");
    Serial.println();
    delay(5000);
    Serial.println("Attempt to receive data");
    Serial.println();

    boolean check = false;
    String readData = "";
    while (esp.available()) {
      char c = esp.read(); //c라는 변수에 한글자씩 읽고
      //Serial.write(c); // 여기까지 c에 저장된 모든 글자 출력
      if (c == '/') { // c가 /를 만나면
        check = ! check; // false -> true 바꿔라
      }
      else if (check) { // true가 되면
        readData += c; // readData에 한글자씩 저장(누적)
      }
    }
    Serial.println(readData); // 저장된 모든 문자열 출력
    coffee = readData.toInt();
    Serial.println("coffee : " + (String)coffee);
    Serial.println();
    Serial.println("End Receiving Data");
  } else {
    Serial.println("Data transfer failed");
    sendDataToServer(data);
  }
  delay(3000);
}

boolean cwJoinAP() {
  String cmd = "AT+CWJAP=\"" + SSID + "\",\"" + PASSWORD + "\"";
  esp.println(cmd);
  if (esp.find("OK")) {
    return true;
  } else {
    return false;
  }
}
