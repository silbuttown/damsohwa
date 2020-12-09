#-*-coding:utf-8 -*-

import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()

doc_ref = db.collection(u'Damsohwa').document(u'RaspberryPi')
doc_ref.set({
    u'Humid' : 50,
    u'Photo' : 300,
    u'Temp' : 11
    })