#!/usr/bin/env python
# coding: utf-8

# In[111]:


from datetime import datetime as dt
today = dt.today()

today = "%4d%02d%02d"%(today.year, today.month, today.day)
key = "urz15HMZIl7GH7VC1sxsnGwRWNAHv%2Bfo9bhWTmlP3P9i3tELJ2oomcBTQtNZBIsxXi5PmFAcw1Yajfb3xvGPsA%3D%3D"


# In[112]:


import requests


# In[113]:


# 기상청 날씨 url
url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey={}&numOfRows=100&pageNo=1&base_date={}&base_time=0200&nx=58&ny=74&dataType=JSON'.format(key,today)
json = requests.get(url)
json


# In[114]:


# item = json.json()
# item 

item = json.json()['response']['body']['items']['item']
item


# In[115]:


# {} 딕셔너리는 키값과 value로 나뉨
for i in item:
    print(i['category'])


# In[116]:


import pandas as pd

sky = pd.DataFrame(item)
sky


# In[117]:


sky1 = sky.loc[:,["fcstDate",'fcstTime',"category","fcstValue"]]


# In[118]:


sky1[(sky1['category']=='POP') | (sky1['category']=='SKY') | (sky1['category']=='REH') 
     | (sky1['category']=='T3H')|(sky1['category']=='TMN')|(sky1['category']=='TMX')]


# In[119]:


sky1["fcstTime"].value_counts()


# In[120]:


sky1.columns = ['예측일자','예측시간','정보','값']


# In[121]:


sky1.loc[sky1['정보']=='POP','정보']='강수확률'
sky1.loc[sky1['정보']=='SKY','정보']='하늘상태'
sky1.loc[sky1['정보']=='TMN','정보']='아침 최저기온'
sky1.loc[sky1['정보']=='TMX','정보']='낮 최고기온'


# In[122]:


# 단축키 F 
sky2 = sky1[sky1['예측일자']==today]


# In[123]:


sky2[(sky2['정보']=='강수확률')|(sky2['정보']=='하늘상태')|(sky2['정보']=='아침 최저기온')|(sky2['정보']=='낮 최고기온')]


# In[124]:


# 서비스 설정시간은 오전 2시 10분 이후로 설정할 것 2시는 안나오게
# 지역 광주로 바꿈! 

