#!/usr/bin/env python
# coding: utf-8

# In[194]:


from datetime import datetime as dt
today = dt.today()

today = "%4d%02d%02d"%(today.year, today.month, today.day)
key = "urz15HMZIl7GH7VC1sxsnGwRWNAHv%2Bfo9bhWTmlP3P9i3tELJ2oomcBTQtNZBIsxXi5PmFAcw1Yajfb3xvGPsA%3D%3D"


# In[195]:


import requests


# In[196]:


# 기상청 날씨 url
url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey={}&numOfRows=100&pageNo=1&base_date={}&base_time=0200&nx=58&ny=74&dataType=JSON'.format(key,today)
json = requests.get(url)
json


# In[197]:


# item = json.json()
# item 

item = json.json()['response']['body']['items']['item']
item


# In[198]:


# {} 딕셔너리는 키값과 value로 나뉨
for i in item:
    print(i['category'])


# In[199]:


import pandas as pd

sky = pd.DataFrame(item)
sky


# In[200]:


sky1 = sky.loc[:,["fcstDate",'fcstTime',"category","fcstValue"]]


# In[ ]:





# In[201]:


sky1[(sky1['category']=='POP') | (sky1['category']=='SKY') | (sky1['category']=='REH') 
     | (sky1['category']=='T3H')|(sky1['category']=='TMN')|(sky1['category']=='TMX')]


# In[202]:


sky1["fcstTime"].value_counts()


# In[203]:


sky1.columns = ['예측일자','예측시간','정보','값']


# In[204]:


sky1.loc[sky1['정보']=='POP','정보']='강수확률'
sky1.loc[sky1['정보']=='SKY','정보']='하늘상태'
sky1.loc[sky1['정보']=='TMN','정보']='아침 최저기온'
sky1.loc[sky1['정보']=='TMX','정보']='낮 최고기온'


# In[ ]:





# In[205]:


# 단축키 F 
sky2 = sky1[sky1['예측일자']==today]


# In[206]:


sky3=sky2[(sky2['정보']=='강수확률')|(sky2['정보']=='하늘상태')|(sky2['정보']=='아침 최저기온')|(sky2['정보']=='낮 최고기온')]


# In[207]:


sky3


# In[208]:


# 서비스 설정시간은 오전 2시 10분 이후로 설정할 것 2시는 안나오게
# 지역 광주로 바꿈! 


# In[209]:


# 하늘상태 (SKY)=맑음(1), 구름많음(3), 흐림(4) 


# In[210]:


df = sky2[sky2['정보'] == '하늘상태']


# In[ ]:





# In[211]:


def weather(n):
    if n == '1':
        return "맑음"
    if n == '3':
        return "구름 맑음"
    if n == '4':
        return "흐림"


# In[213]:


weather_value= df["값"]


# In[214]:


realsky = weather_value.apply(weather)


# In[215]:


realsky


# In[216]:


df['값'] = weather_value.apply(weather)


# In[217]:


sky3[sky3['정보'] == '하늘상태'] = df


# In[218]:


sky3


# In[ ]:




