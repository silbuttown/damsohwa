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

#+++++지정한 이름으로 Firestore에 작성+++++++++
from weather_alarm import Tweather , temperature
from medicine_alarm import medicine
#+++++++++++++++++++++++++++++++++++++++++++

from plants_gas_flame import gas, flame, bright, soil, humid, temp
from test_function import Scan

#+++++++++++++++++++++++++++++++++++++++++++++
from timecheck_firebase import Check, Check2


# Target document
DOCUMENT = '차세리'
# 
# 
# m_time = ""
# 
# while True:
#     
#     schedule.every().day.at(m_time).do(medicine)



# weather_timeset
# set_time= "12:06"

# # drug_timeset
# set_drug = "12:06:08"

# m_time is -->>> firebase db

# g_time is -->>> firebase db 

cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
#firebase_admin.initialize_app(cred)
db=firestore.client()


doc_ref = db.collection(u'Damsohwa').document(DOCUMENT)
g_time = doc_ref.get().get(u'g_time')
m_time = doc_ref.get().get(u'm_time')
print(u'g_time : {}'.format(g_time))
print(u'm_time : {}'.format(m_time))

# 매일 해당 시각에 medicine 함수를 실행하겠습니다.



line = Scan(DOCUMENT)
gas1,flame1,bright1,soil1,humid1,temp1 = line.split(',')
gas1,flame1,bright1,soil1,humid1,temp1 = float(gas1),float(flame1),float(bright1),float(soil1),float(humid1),float(temp1)

# +++++++++++++++++This is timecheck +++++++++++++++++++++++++
schedule.every(8).hours.do(Check,soil1)
schedule.every(24).hours.do(Check2,soil1)
schedule.every().day.at(g_time).do(Tweather)
schedule.every().day.at(g_time+":06").do(temperature)
for i in range(0,len(m_time)):
    schedule.every().day.at(m_time[i]).do(medicine)
# schedule.every().day.at(m_time).do(medicine)
   
while True:    
    #get data from Arduino
    line = Scan(DOCUMENT)
    gas1,flame1,bright1,soil1,humid1,temp1 = line.split(',')
    gas1,flame1,bright1,soil1,humid1,temp1 = float(gas1),float(flame1),float(bright1),float(soil1),float(humid1),float(temp1)
    print("Data from Arduino")
    print("gas : {} flame : {} bright : {} soil : {} humid : {} temp : {}".format(gas1,flame1,bright1,soil1,humid1,temp1))
    if gas1 >= 90:
        gas()
    if flame1 >= 75:
        flame()
    if bright1 <= 50:
        bright()
    if soil1 <= 20:
        soil()
    if humid1 <= 30:
        humid()
    if temp1 <= 15:
        temp()