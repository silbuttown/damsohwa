#include "HUSKYLENS.h"
#include "SoftwareSerial.h"

HUSKYLENS huskylens;
SoftwareSerial mySerial(7, 8); // RX, TX
//HUSKYLENS green line >> Pin 7; blue line >> Pin 8
void printResult(HUSKYLENSResult result);

void setup() {
  
    Serial.begin(9600);
    mySerial.begin(9600);
    while (!huskylens.begin(mySerial))
    {
        Serial.println(F("Begin failed!"));
        Serial.println(F("1.Please recheck the \"Protocol Type\" in HUSKYLENS (General Settings>>Protocol Type>>Serial 9600)"));
        Serial.println(F("2.Please recheck the connection."));
        delay(100);
    }
}
long Time;
long lastTime;
int workCheck;
int existCheck1 =0;
String existCheck2 ="";
void loop() {
   Time = millis()/1000; 
   //Time%5==0&&  
  if(Time!=lastTime){    
     if (!huskylens.request()) Serial.println(F("Fail to request data from HUSKYLENS, recheck the connection!"));
    else if(!huskylens.isLearned()) Serial.println(F("Nothing learned, press learn button on HUSKYLENS to learn one!"));
    else if(!huskylens.available()){ 
     // Serial.println(F("No block or arrow appears on the screen!"));
        
      }
    else
    {
        //Serial.println(F("###########"));
        if (huskylens.available())
        {
            HUSKYLENSResult result = huskylens.read();
            if(result.ID !=NULL)
            {
              existCheck1 ++;
              
              };
           // printResult(result);          
           
        }   
    }Serial.println("얼굴인식 : "+(String)existCheck1); 
       if(Time%10==0&&Time!=lastTime){
    if(existCheck1>=7){
       existCheck2="재중";
    }else{
      existCheck2="부재중";
    }
    existCheck1=0;
    Serial.println("부재여부 : "+existCheck2);
    existCheck2="";
   }
   }
   lastTime = Time;

}

void printResult(HUSKYLENSResult result){
    if (result.command == COMMAND_RETURN_BLOCK){
        Serial.println(String()+F("Block:xCenter=")+result.xCenter+F(",yCenter=")+result.yCenter+F(",width=")+result.width+F(",height=")+result.height+F(",ID=")+result.ID);
       
    }
    else if (result.command == COMMAND_RETURN_ARROW){
        Serial.println(String()+F("Arrow:xOrigin=")+result.xOrigin+F(",yOrigin=")+result.yOrigin+F(",xTarget=")+result.xTarget+F(",yTarget=")+result.yTarget+F(",ID=")+result.ID);
    }
    else{
        Serial.println("Object unknown!");
    }
}
