#!/usr/bin/env python
# coding: utf-8

# In[1]:


pip install schedule


# In[2]:


import requests


# In[3]:


f = open("kakaokey.txt", 'r')
SECRET_KEY =f.readline()
f.close()
SECRET_KEY


# In[4]:


# Python 파일
import urllib.request

url = 'https://kakaoi-newtone-openapi.kakao.com/v1/synthesize'
request = urllib.request.Request(url)
request.add_header('Host','kakaoi-newtone-openapi.kakao.com')
request.add_header('Content-Type','application/xml')
request.add_header('Authorization',f'KakaoAK {SECRET_KEY}')


# In[5]:


import schedule
import pygame
import time


# In[6]:



def medicine():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'
    text = "할머니! 약 드실 시간이에요. 오늘도 건강 하세요."
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))
    # 요청 URL과 headers, data를 post방식으로 보내준다.
    
    writeFile=open('test3.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()
    # 음성 출력
    pygame.mixer.init()
    pygame.mixer.music.load("test3.mp3")
    pygame.mixer.music.play()
    time.sleep(5) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()


# In[11]:


schedule.every().day.at("10:06").do(medicine) # 매일 해당 시각에 medicine 함수를 실행하겠습니다.


# In[ ]:


while True:
    schedule.run_pending()


# In[ ]:


# sound = pygame.mixer.Sound('test3.mp3')
pygame.mixer.init()
pygame.mixer.music.load("test3.mp3")
pygame.mixer.music.play()
time.sleep(5)
pygame.mixer.quit()


# In[ ]:




