
#include "DHT.h"

#define DHTPIN 3 
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);

int soil;

void setup() {
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  pinMode(A4,INPUT);
  Serial.begin(9600);
  Serial.println(F("DHTxx test!"));

  dht.begin();
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
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }

 
  float hif = dht.computeHeatIndex(f, h);  
  float hic = dht.computeHeatIndex(t, h, false);

  Serial.print(F("Humidity: "));
  Serial.print(h);
  Serial.print(F("%  Temperature: "));
  Serial.print(t);
  Serial.print(F("°C "));
  //Serial.print(f);
//  Serial.print(F("°F  Heat index: "));
//  Serial.print(hic);
//  Serial.print(F("°C "));
//  Serial.print(hif);
//  Serial.println(F("°F"));
  
  Serial.println("");
  Serial.print("가스 : ");
  Serial.println(gas_data);
  Serial.println("");
  Serial.print("밝기 : ");
  Serial.println(light);
  Serial.println("");
  Serial.print("불꽃 : ");
  Serial.println(fire);
  Serial.println("");
  Serial.print("토양 습도 : ");
  Serial.print(soil);
  Serial.println("%");
  Serial.println("");
  
  
}
