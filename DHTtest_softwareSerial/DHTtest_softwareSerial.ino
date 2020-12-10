
#include "DHT.h"
#include <SoftwareSerial.h>



#define DHTPIN 3 
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);

int soil;
SoftwareSerial mySerial(8, 9);
void setup() {
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  pinMode(A4,INPUT);
  Serial.begin(9600);
  Serial.println(F("DHTxx test!"));

  dht.begin();
  mySerial.begin(9600);
}

void loop() {  
  delay(2000);

 
  float h = dht.readHumidity(); 
  float t = dht.readTemperature();  
  float f = dht.readTemperature(true);
  int gas_data = analogRead(A0);
  int light = analogRead(A1);
  int fire = analogRead(A2);
  int output = analogRead(A3);

  soil = map(output,550,0,0,100);
  
  if (isnan(h) || isnan(t) || isnan(f)) {
    mySerial.write(F("Failed to read from DHT sensor!"));
    return;
  }

 
  float hif = dht.computeHeatIndex(f, h);  
  float hic = dht.computeHeatIndex(t, h, false);

  mySerial.write(F("Humidity: "));
  mySerial.write(h);
  mySerial.write(F("%  Temperature: "));
  mySerial.write(t);
  mySerial.write(F("°C "));
  //Serial.print(f);
//  Serial.print(F("°F  Heat index: "));
//  Serial.print(hic);
//  Serial.print(F("°C "));
//  Serial.print(hif);
//  Serial.println(F("°F"));
  
  mySerial.write("");
  mySerial.write("가스 : ");
  mySerial.write(gas_data);
  mySerial.write("");
  mySerial.write("밝기 : ");
  mySerial.write(light);
  mySerial.write("");
  mySerial.write("불꽃 : ");
  mySerial.write(fire);
  mySerial.write("");
  mySerial.write("토양 습도 : ");
  mySerial.write(soil);
  mySerial.write("%");
  
  
  
}
