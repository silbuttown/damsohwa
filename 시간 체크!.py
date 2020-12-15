#!/usr/bin/env python
# coding: utf-8

# In[ ]:


from win10toast import ToastNotifier


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


try:
    doc = doc_ref.get()
    print(u'Document data : {}'.format(doc.to_dict()))
    
except :
    print(u'No such document!')


# In[ ]:


data = doc.to_dict()


# In[ ]:


float(data['soil'])


# In[ ]:


def check():
    if float(data['soil']) <= 1003.0:
        icon_path = "C:/icon/crashdump.ico"
        n = ToastNotifier()
        n.show_toast("*! Alert !*", ">> 경고.!", duration = 10, icon_path = icon_path)       


# In[ ]:


def check2():
    if float(data['soil']) <= 1003.0:
        icon_path = "C:/icon/crashdump.ico"
        n = ToastNotifier()
        n.show_toast("*! Alert !*", ">> 긴급상황.!", duration = 10, icon_path = icon_path)


# In[ ]:


schedule.every(10).seconds.do(check)


# In[ ]:


schedule.every(1).minutes.do(check2)


# In[ ]:


while True:
    schedule.run_pending()

