#!/usr/bin/env python
# coding: utf-8

# In[36]:


# 위도와 경도를 변환해주는 라이브러리

import math

def grid(v1, v2) :

    RE = 6371.00877 # 지구 반경(km)
    GRID = 5.0      # 격자 간격(km)
    SLAT1 = 30.0    # 투영 위도1(degree)
    SLAT2 = 60.0    # 투영 위도2(degree)
    OLON = 126.0    # 기준점 경도(degree)
    OLAT = 38.0     # 기준점 위도(degree)
    XO = 43         # 기준점 X좌표(GRID)
    YO = 136        # 기1준점 Y좌표(GRID)

    DEGRAD = math.pi / 180.0
    RADDEG = 180.0 / math.pi

    re = RE / GRID;
    slat1 = SLAT1 * DEGRAD
    slat2 = SLAT2 * DEGRAD
    olon = OLON * DEGRAD
    olat = OLAT * DEGRAD

    sn = math.tan(math.pi * 0.25 + slat2 * 0.5) / math.tan(math.pi * 0.25 + slat1 * 0.5)
    sn = math.log(math.cos(slat1) / math.cos(slat2)) / math.log(sn)
    sf = math.tan(math.pi * 0.25 + slat1 * 0.5)
    sf = math.pow(sf, sn) * math.cos(slat1) / sn
    ro = math.tan(math.pi * 0.25 + olat * 0.5)
    ro = re * sf / math.pow(ro, sn);
    rs = {};

    ra = math.tan(math.pi * 0.25 + (v1) * DEGRAD * 0.5)
    ra = re * sf / math.pow(ra, sn)

    theta = v2 * DEGRAD - olon
    if theta > math.pi :
        theta -= 2.0 * math.pi
    if theta < -math.pi :
        theta += 2.0 * math.pi
    theta *= sn
    rs['x'] = math.floor(ra * math.sin(theta) + XO + 0.5)
    rs['y'] = math.floor(ro - ra * math.cos(theta) + YO + 0.5)

    return rs


# ~ 오늘의 날씨 ~

# In[46]:


from datetime import datetime as dt
today = dt.today()

today = "%4d%02d%02d"%(today.year, today.month, today.day)
key = "urz15HMZIl7GH7VC1sxsnGwRWNAHv%2Bfo9bhWTmlP3P9i3tELJ2oomcBTQtNZBIsxXi5PmFAcw1Yajfb3xvGPsA%3D%3D"


# In[47]:


import requests


# In[61]:


# 기상청 날씨 url
url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey={}&numOfRows=100&pageNo=1&base_date={}&base_time=0200&nx=55&ny=127&dataType=JSON'.format(key,today)
json = requests.get(url)
json


# In[58]:


# item = json.json()
# item 

item = json.json()['response']['body']['items']['item']


# In[59]:


# {} 딕셔너리는 키값과 value로 나뉨
for i in item:
    print(i['category'])


# In[73]:


import pandas as pd

sky = pd.DataFrame(item)
sky


# In[75]:


sky1 = sky.loc[:,["fcstDate",'fcstTime',"category","fcstValue"]]


# In[81]:


sky1[(sky1['category']=='POP') | (sky1['category']=='SKY') | (sky1['category']=='REH') 
     | (sky1['category']=='T3H')|(sky1['category']=='TMN')|(sky1['category']=='TMX')]


# ~ 구분선 ~

# In[72]:


sky[sky['category']=="PTY"].loc[:,["category",'fcstTime']]

