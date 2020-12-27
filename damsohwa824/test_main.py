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
import datetime as dt

#+++++지정한 이름으로 Firestore에 작성+++++++++
from weather_alarm import Tweather , temperature
from medicine_alarm import medicine
#+++++++++++++++++++++++++++++++++++++++++++

from plants_gas_flame import gas, flame, bright, soil, temp
from test_function import Scan

#+++++++++++++++++++++++++++++++++++++++++++++
from timecheck_firebase import Check

# Target document
DOCUMENT = '차세리'

check_time = None
#cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
#firebase_admin.initialize_app(cred)
db=firestore.client()
doc_ref = db.collection(u'Damsohwa').document(DOCUMENT)
g_time = doc_ref.get().get(u'g_time')
m_time = doc_ref.get().get(u'm_time')
print(u'g_time : {}'.format(g_time))
print(u'm_time : {}'.format(m_time))
# line = Scan(DOCUMENT)
# gas1,flame1,bright1,soil1,humid1,temp1 = line.split(',')
# gas1,flame1,bright1,soil1,humid1,temp1 = float(gas1),float(flame1),float(bright1),float(soil1),float(humid1),float(temp1)
# +++++++++++++++++This is timecheck +++++++++++++++++++++++++
schedule.every().day.at(g_time).do(Tweather)
schedule.every().day.at(g_time+":04").do(temperature)
if m_time is not None:
    for i in range(0,len(m_time)):
        schedule.every().day.at(m_time[i]).do(medicine)
   
while True:

                 
    #get data from Arduino    
    line = Scan(DOCUMENT)
    gas1,flame1,bright1,soil1,humid1,temp1 = line.split(',')
    gas1,flame1,bright1,soil1,humid1,temp1 = float(gas1),float(flame1),float(bright1),float(soil1),float(humid1),float(temp1)
    print("Data from Arduino")
    print("gas : {} flame : {} bright : {} soil : {} humid : {} temp : {}".format(gas1,flame1,bright1,soil1,humid1,temp1))
    if temp1 < 20:
        temp()
    if gas1 >= 90:
        gas()        
    if flame1 >= 75:
        flame()        
    if bright1 < 60:
        bright()        
    if soil1 <= 20:        
        if check_time is None:
            check_time = dt.datetime.now()
        else:
            result = dt.datetime.now()-check_time
            if result > dt.timedelta(hours = 24):
                Check(3)
            elif result > dt.timedelta(hours = 16):
                Check(2)
            elif result > dt.timedelta(hours = 8):
                Check(1)            
        soil()
    else :
        check_time = None
        Check(0)
    schedule.run_pending()
    time.sleep(1)
    
        