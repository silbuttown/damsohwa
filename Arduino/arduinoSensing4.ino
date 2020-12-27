int sensor = A0;
int a = A1;
int output_value;
void setup() {
  pinMode(sensor,INPUT);
  pinMode(a,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  Serial.begin(9600);
  
}

void loop() {
  int gas = analogRead(sensor);
  int fire = analogRead(a);
  int light = analogRead(A2);
  int soil = analogRead(A3);
  String message = "";
  message+=gas;
  message+=",";
  message+=fire;
  message+=",";
  message+=light;
  message+=",";
  message+=soil;
  Serial.println(message);
  delay(3000);

}
