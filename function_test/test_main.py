import serial
import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import schedule
import pygame
import time
import requests
import urllib.request
import pandas as pd

#1215  #필요한 함수 import
from weather_alarm import Tweather, temperature
from medicine_alarm import medicine
from plants_gas_flame import gas ,flame, bright, soil, humid, temp

# 기기가 연동해야하는 firebase 경로
COLLECTION = u'Damsohwa'
DOCUMENT = u'RaspberryPi'
# weather_timeset

set_time= "17:24"

# drug_timeset


set_drug = "17:25:08"

schedule.every().day.at(set_time).do(Tweather)
schedule.every().day.at(set_time+":06").do(temperature)
schedule.every().day.at(set_drug).do(medicine) # 매일 해당 시각에 medicine 함수를 실행하겠습니다.




#+++++++++++++++++++++This is plants_gas_flame alarm++++++++++++++++
    
cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()


doc_ref = db.collection(COLLECTION).document(DOCUMENT)


try:
    doc = doc_ref.get()
    print(u'Document data : {}'.format(doc.to_dict()))

except :
    print(u'No such document!')


doc.to_dict()
data_df = pd.DataFrame(doc.to_dict(), index=[0]).astype('float')


data = doc.to_dict()



if float(data['gas']) <= 14:
    gas()
if float(data['flame']) <= 1000:
   flame()
if float(data['bright']) <= 143:
    bright()
if float(data['soil']) <= 1003.0:
    soil()
if float(data['humid']) <= 30:
    humid()
if float(data['temp']) <= 23:
    temp()
    
    
while True:
    schedule.run_pending()
