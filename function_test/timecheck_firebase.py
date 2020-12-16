import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import schedule
import time

db=firestore.client()
doc_ref = db.collection(u'Damsohwa').document(u'plants_gas_flame')


def Check(soil):
    if soil <= 1003.0:
        doc_ref.update({
            u'FirstCheck': '고객 반응없음 8시간 경과(경고)'
        })


def Check2(soil):
    if soil <= 1001.0:
        doc_ref.update({
            u'FirstCheck' : None
            })
        doc_ref.update({
            u'FinalCheck': '고객 반응없음 24시간 경과(긴급)'
        })
    elif soil <= 1003.0:
        doc_ref.update({
            u'FirstCheck' : None
            })
