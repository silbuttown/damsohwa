#!/usr/bin/env python
# coding: utf-8

# In[1]:


import schedule
import pygame
import time


# In[2]:


key = 'urz15HMZIl7GH7VC1sxsnGwRWNAHv%2Bfo9bhWTmlP3P9i3tELJ2oomcBTQtNZBIsxXi5PmFAcw1Yajfb3xvGPsA%3D%3D'


# In[3]:


from datetime import datetime as dt
today = dt.today()
date = "%04d%02d%02d"%(today.year, today.month, today.day)


# In[4]:


today_time = '0200'


# In[5]:


url_api = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey={}&numOfRows=100&pageNo=1&base_date={}&base_time={}&nx=58&ny=74&dataType=JSON'.format(key,date,today_time)


# In[6]:


import requests
resp = requests.get(url_api)


# In[7]:


data = resp.json()['response']['body']['items']['item']


# In[8]:


import pandas as pd


# In[9]:


data_df = pd.DataFrame(data)


# In[10]:


data_df


# In[11]:


data_df.loc[:,['category','fcstValue']]


# In[12]:


data1 = data_df.loc[:,["fcstDate",'fcstTime',"category","fcstValue"]]


# In[13]:


data1[(data1['category']=='POP') | (data1['category']=='SKY') | (data1['category']=='REH') 
     | (data1['category']=='T3H')|(data1['category']=='TMN')|(data1['category']=='TMX')]


# In[14]:


data1.columns = ["일자","시간","정보","측정값"]


# In[15]:


data1.loc[data1['정보']== 'POP', '정보'] = '강수확률'
data1.loc[data1['정보']== 'SKY', '정보'] = '하늘상태'
data1.loc[data1['정보']== 'TMN', '정보'] = '아침 최저기온'
data1.loc[data1['정보']== 'TMX', '정보'] = '낮 최고기온'


# In[16]:


data2 = data1[data1['일자']==date]


# In[17]:


data3 = data2[(data2['정보']=='강수확률') | (data2['정보']=='하늘상태') |(data2['정보']=='아침 최저기온')|(data2['정보']=='낮 최고기온')]


# In[18]:


df = data2[data2['정보'] == '하늘상태']


# In[19]:


df2 = data2[data2['정보'] == '강수확률']


# In[20]:


df3 = data2[(data2['정보'] == '아침 최저기온') | (data2['정보'] == '낮 최고기온')]


# In[21]:


print(df3)


# In[22]:


def weather(n):
    if n == '1':
        return "맑음"
    if n == '3':
        return "구름 많음"
    if n == '4':
        return "흐림"


# In[23]:


weather_value = df['측정값']


# In[24]:


sky = weather_value.apply(weather)


# In[25]:


df['측정값'] = weather_value.apply(weather)


# In[26]:


data3[data3['정보'] == '하늘상태'] = df


# In[27]:


data3.index=range(len(data3.index))


# In[28]:


import requests


# In[29]:


data3


# In[30]:


f = open("kakaokey.txt", 'r')
SECRET_KEY =f.readline()
f.close()
SECRET_KEY


# In[31]:


# Python 파일
import urllib.request

url = 'https://kakaoi-newtone-openapi.kakao.com/v1/synthesize'
request = urllib.request.Request(url)
request.add_header('Host','kakaoi-newtone-openapi.kakao.com')
request.add_header('Content-Type','application/xml')
request.add_header('Authorization',f'KakaoAK {SECRET_KEY}')

#VoiceName = 'WOMAN_DIALOG_BRIGHT'
#text = "할머니! 오늘은 날씨가 정말 좋아요!! 기분 좋은 하루 보내세요."
#data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
#response = urllib.request.urlopen(request, data = data.encode('utf-8'))
# 요청 URL과 headers, data를 post방식으로 보내준다.


# In[32]:


def Tweather():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'

    if df['측정값'].iloc[0] == '맑음':  
        text = "할머니! 오늘은 날씨가 정말 좋아요!! 기분 좋은 하루 보내세요."

    elif df['측정값'].iloc[0] == '구름 많음':  
        text = "할머니! 오늘은 구름이 많아 날씨가 추울 수 있으니 옷을 따뜻하게 입으세요."
    
    elif df['측정값'].iloc[0] == '흐림':
        text = "할머니! 오늘은 강수확률{} 퍼센트로 비 가 올 수 있으니 우산을 꼭 챙겨 주세요!!.".format(df2['측정값'].iloc[0])
    
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))
    
    writeFile=open('test.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()
    
    pygame.mixer.init()
    pygame.mixer.music.load("test.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()


# In[33]:


def temperature():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'
    text2 = "할머니! 오늘 아침 최저 기온은 {}도 이고, 낮 최고 기온은 {}도 입니다.".format(df3['측정값'].iloc[0],df3['측정값'].iloc[1])
    data = "<speak><voice name='" + VoiceName + "'>" + text2 + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('test2.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()
    
    pygame.mixer.init()
    pygame.mixer.music.load("test2.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()


# In[34]:


schedule.every().day.at("11:59").do(Tweather)
schedule.every().day.at("12:00").do(temperature)


# In[ ]:


while True:
    schedule.run_pending()


# In[ ]:





# In[ ]:





# In[ ]:




