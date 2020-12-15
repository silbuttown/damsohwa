#  import serial
#  import firebase_admin
#  from firebase_admin import credentials
#  from firebase_admin import firestore

#1215  #+++++지정한 이름으로 Firestore에 작성+++++++++
from weather_alarm import  Tweather
from weather_alarm import  temperature
from medicine_alarm import medicine
from plants_gas_flame import gas
from plants_gas_flame import flame
from plants_gas_flame import bright
from plants_gas_flame import soil
from plants_gas_flame import humid
from plants_gas_flame import temp
#from test_function import scan

# Tweather()
# temperature()
# medicine()

if float(data['gas']) <= 14:
     gas()
if float(data['flame']) <= 1000:
   flame()
if float(data['bright']) <= 143:
    bright()
if float(data['soil']) <= 1003.0:
    soil()
if float(data['humid']) <= 50:
    humid()
if float(data['temp']) <= 23:
    temp()

# scan("gas")
# scan("flame")
# scan("bright")
# scan("soil")
# scan("humid")
# scan("temp")