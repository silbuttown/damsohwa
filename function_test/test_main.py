import serial
import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
from test_function import scan

    
scan("suhyeon")    #지정한 이름으로 Firestore에 작성