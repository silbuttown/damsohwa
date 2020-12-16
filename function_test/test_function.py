import serial
import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()

ser = serial.Serial('/dev/ttyACM0', 9600, timeout=1)
ser.flush()

def Scan(doc):
    #edoc = doc.encode('utf-8')
    while True:
        if ser.in_waiting >0:
            #read data from arduino
            line = ser.readline().decode('utf-8').rstrip()
            #split data to variables
            gas,flame,bright,soil,humid,temp = line.split(',')                        
            #setting firebase path
            doc_ref = db.collection(u'Damsohwa').document(doc)
            #update firebase data  // set -> go away ,  update -> it won't go away  
            doc_ref.set({
                    u'gas' : gas,
                    u'flame' : flame,
                    u'bright' : bright,
                    u'soil' : soil,
                    u'humid' : humid,
                    u'temp' : temp
                        })            
            #print("gas : {} flame : {} bright : {} soil : {} humid : {} temp : {}".format(gas,flame,bright,soil,humid,temp))
            return line
            break;
    