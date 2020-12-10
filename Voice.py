#!/usr/bin/env python
# coding: utf-8

# In[102]:


import requests


# In[103]:


f = open("kakaokey.txt", 'r')
SECRET_KEY =f.readline()
f.close()
SECRET_KEY


# In[104]:


# Python 파일
import urllib.request

url = 'https://kakaoi-newtone-openapi.kakao.com/v1/synthesize'
request = urllib.request.Request(url)
request.add_header('Host','kakaoi-newtone-openapi.kakao.com')
request.add_header('Content-Type','application/xml')
request.add_header('Authorization',f'KakaoAK {SECRET_KEY}')

VoiceName = 'WOMAN_DIALOG_BRIGHT'
text = "할머니, 약 드실 시간이에요. 잊지 말고 꼭 챙겨 드세요!"
data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
response = urllib.request.urlopen(request, data = data.encode('utf-8'))
# 요청 URL과 headers, data를 post방식으로 보내준다.


# In[105]:


writeFile=open('test.mp3','wb')
writeFile.write(response.read())
writeFile.close()


# In[ ]:




