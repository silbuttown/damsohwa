#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import schedule
import time


# In[ ]:


cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()


# In[ ]:


doc_ref = db.collection(u'Damsohwa').document(u'RaspberryPi')


# In[ ]:


doc_ref2 = db.collection(u'Damsohwa').document(u'EmergencyCheck')


# In[ ]:


try:
    doc = doc_ref.get()
    print(u'Document data : {}'.format(doc.to_dict()))
    
except :
    print(u'No such document!')


# In[ ]:


data = doc.to_dict()


# In[ ]:


def check():
    if float(data['soil']) <= 1003.0:
        doc_ref2.set({
            u'FirstCheck': '고객 반응없음 8시간 경과(경고)'
        })


# In[ ]:


def check2():
    if float(data['soil']) <= 1003.0:
        doc_ref2.set({
            u'FinalCheck': '고객 반응없음 24시간 경과(긴급)'
        })


# In[ ]:


schedule.every(8).hours.do(check)
schedule.every(24).hours.do(check2)


# In[ ]:


while True:
    schedule.run_pending()

