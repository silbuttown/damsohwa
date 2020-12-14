#!/usr/bin/env python
# coding: utf-8

# In[1]:


import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore


# In[2]:


cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()


# In[3]:


# Damsohwa 라는 컬렉션과 문서형태 라즈베리파이 불러옴
doc_ref = db.collection(u'Damsohwa').document(u'RaspberryPi')


# In[4]:


try:
    doc = doc_ref.get()
    print(u'Document data : {}'.format(doc.to_dict()))
    
except :
    print(u'No such document!')


# In[5]:


# 불꽃 데이터를 가져오기!!!!!
doc.to_dict()['flame']


# In[6]:


import pandas as pd


# In[7]:


data_df = pd.DataFrame(doc.to_dict(), index=[0]).astype("float")


# In[8]:


# Document data를  -> data 변수로 담아두기
data = doc.to_dict()


# In[9]:


data_df


# In[10]:


# 화분에 필요한 센서

damsohwa = data_df.loc[:,["soil","temp","bright","humid"]]


# In[11]:


# 가스 감지
gas = data_df.loc[:,["gas"]]


# In[12]:


# 화재 감지
flame = data_df.loc[:,["flame"]]


# In[13]:


damsohwa


# In[14]:


gas


# In[15]:


flame


# In[16]:


# 음성 API
import requests


# In[17]:


f = open("kakaokey.txt", 'r')
SECRET_KEY =f.readline()
f.close()
SECRET_KEY


# In[18]:


import urllib.request

url = 'https://kakaoi-newtone-openapi.kakao.com/v1/synthesize'
request = urllib.request.Request(url)
request.add_header('Host','kakaoi-newtone-openapi.kakao.com')
request.add_header('Content-Type','application/xml')
request.add_header('Authorization',f'KakaoAK {SECRET_KEY}')


# In[19]:


import schedule
import pygame
import time


# In[20]:


def gas():
    # 조건에 충족하면 음성을 출력
    #if(gas ) 
    VoiceName = 'WOMAN_DIALOG_BRIGHT'
    text = "할머니! 가스레인지에 뭘 올려 뒀나요? 가스가 새고 있어요!"
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))
    # 요청 URL과 headers, data를 post방식으로 보내준다.
    
    writeFile=open('test4.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()
    # 음성 출력
    pygame.mixer.init()
    pygame.mixer.music.load("test4.mp3")
    pygame.mixer.music.play()
    time.sleep(5) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()


# In[21]:


def flame():
    # 가스불 몇 도 이상일 때 이상 징후로 인식
    
    VoiceName = 'WOMAN_DIALOG_BRIGHT'
    text = "할머니! 불이 났어요!!! "
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))
    # 요청 URL과 headers, data를 post방식으로 보내준다.
    
    writeFile=open('test4.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()
    # 음성 출력
    pygame.mixer.init()
    pygame.mixer.music.load("test4.mp3")
    pygame.mixer.music.play()
    time.sleep(5) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()


# In[ ]:




