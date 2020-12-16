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

#1215  #+++++지정한 이름으로 Firestore에 작성+++++++++
from weather_alarm import Tweather , temperature
from medicine_alarm import medicine
#+++++++++++++++++++++++++++++++++++++++++++

from plants_gas_flame import gas, flame, bright, soil, humid, temp
from test_function import Scan

# +++++++++++++++++++++++++++++++++++++++++++++
from timecheck_firebase import Check, Check2


# Target document
DOCUMENT = 'plants_gas_flame'

# weather_timeset
set_time= "12:06"

# drug_timeset
set_drug = "12:06:08"


schedule.every().day.at(set_time).do(Tweather)
schedule.every().day.at(set_time+":06").do(temperature)
schedule.every().day.at(set_drug).do(medicine)
# 매일 해당 시각에 medicine 함수를 실행하겠습니다.




#get data from Arduino
line = Scan(DOCUMENT)

gas1,flame1,bright1,soil1,humid1,temp1 = line.split(',')
gas1,flame1,bright1,soil1,humid1,temp1 = float(gas1),float(flame1),float(bright1),float(soil1),float(humid1),float(temp1)
print("Data from Arduino")
print("gas : {} flame : {} bright : {} soil : {} humid : {} temp : {}".format(gas1,flame1,bright1,soil1,humid1,temp1))

schedule.every(5).seconds.do(Check,soil1)
schedule.every(10).seconds.do(Check2,soil1)

if gas1 <= 14:
    gas()
if flame1 <= 1000:
    flame()
if bright1 <= 143:
    bright()
if soil1 <= 1003.0:
    soil()
if humid1 <= 30:
    humid()
if temp1 <= 23:
    temp()
    
    
while True:
    schedule.run_pending()
