#include "DHT.h"

#define DHTPIN 7     // DHT11이 연결된 핀

#define DHTTYPE DHT22   // DHT 11, DHT시리즈중 11을 선택합니다.

DHT dht(DHTPIN, DHTTYPE);

int sensor = A0;
int a = A1;
int output_value;
void setup() {
  pinMode(sensor,INPUT);
  pinMode(a,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  //pinMode(13,OUTPUT);//13번핀 출력으로 설정
  dht.begin();
  Serial.begin(9600);
  
}

void loop() {
  int gas = analogRead(sensor);
  int fire = analogRead(a);
  int light = analogRead(A2);
  int soil = analogRead(A3);

  float h = dht.readHumidity();// 습도를 측정합니다.
  float t = dht.readTemperature();// 온도를 측정합니다.
  float hic = dht.computeHeatIndex(t, h, false);
  if (isnan(h) || isnan(t)) {
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }
  String message = "";
  message+=gas;
  message+=",";
  message+=fire;
  message+=",";
  message+=light;
  message+=",";
  message+=soil;
  message+=",";
  message+=h;
  message+=",";
  message+=t;
  
//  Serial.println("");
 // Serial.print("gas : ");
  Serial.println(message);
 // Serial.print("fire : ");
//  Serial.println(fire);
//  Serial.print("light : ");
//  Serial.println(light);
//  Serial.print("soil : ");
//  Serial.println(soil);
 // Serial.println("%");
  delay(3000);

}
