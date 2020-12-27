import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import schedule
import time

db=firestore.client()
doc_ref = db.collection(u'Damsohwa').document(u'차세리')


def Check(version):
    if version == 3:
        doc_ref.update({
            u'check': '고객 반응없음 24시간 경과(긴급)'
            })   
    elif version == 2:
        doc_ref.update({
            u'check': '고객 반응없음 16시간 경과(경고)'
        })
    elif version == 1:
        doc_ref.update({  
            u'check': '고객 반응없음 8시간 경과(주의)'
        })
    elif version == 0:
        doc_ref.update({  
            u'check': '특이사항 없음'
        })
Check(0)        