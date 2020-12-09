#!/usr/bin/env python
# coding: utf-8

# In[479]:


key = 'urz15HMZIl7GH7VC1sxsnGwRWNAHv%2Bfo9bhWTmlP3P9i3tELJ2oomcBTQtNZBIsxXi5PmFAcw1Yajfb3xvGPsA%3D%3D'


# In[480]:


from datetime import datetime as dt
today = dt.today()
date = "%04d%02d%02d"%(today.year, today.month, today.day)


# In[481]:


time = '0200'


# In[482]:


url_api = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey={}&numOfRows=100&pageNo=1&base_date={}&base_time={}&nx=55&ny=127&dataType=JSON'.format(key,date,time)


# In[483]:


print(url_api)


# In[484]:


import requests
resp = requests.get(url_api)


# In[485]:


data = resp.json()['response']['body']['items']['item']


# In[486]:


for i in data:
    print(i['category'])


# In[487]:


import pandas as pd


# In[488]:


data_df = pd.DataFrame(data)


# In[489]:


data_df


# In[490]:


data_df.loc[:,['category','fcstValue']]


# In[491]:


li = ["POP",'REH','SKY','TMN','TMX','T3H']
for i in li:
    display(data_df[data_df['category'] == i])


# In[492]:


data1 = data_df.loc[:,["fcstDate",'fcstTime',"category","fcstValue"]]


# In[493]:


data1[(data1['category']=='POP') | (data1['category']=='SKY') | (data1['category']=='REH') 
     | (data1['category']=='T3H')|(data1['category']=='TMN')|(data1['category']=='TMX')]


# In[494]:


data1.columns = ["일자","시간","정보","측정값"]


# In[495]:


data1.loc[data1['정보']== 'POP', '정보'] = '강수확률'
data1.loc[data1['정보']== 'SKY', '정보'] = '하늘상태'
data1.loc[data1['정보']== 'TMN', '정보'] = '아침 최저기온'
data1.loc[data1['정보']== 'TMX', '정보'] = '낮 최고기온'


# In[496]:


data2 = data1[data1['일자']==date]


# In[521]:


data3 = data2[(data2['정보']=='강수확률') | (data2['정보']=='하늘상태') |(data2['정보']=='아침 최저기온')|(data2['정보']=='낮 최고기온')]


# In[522]:


data3


# In[498]:


# 서비스 요청 시간을 02:10 이후로 설정하고 할것!


# In[499]:


# sky = {'1':'맑음','3':'구름 맑음','4':'흐림'}


# In[506]:


df = data2[data2['정보'] == '하늘상태']


# In[516]:


def weather(n):
    if n == '1':
        return "맑음"
    if n == '3':
        return "구름 맑음"
    if n == '4':
        return "흐림"


# In[517]:


weather_value = df['측정값']


# In[523]:


sky = weather_value.apply(weather)


# In[524]:


sky


# In[526]:


df['측정값'] = weather_value.apply(weather)


# In[529]:


data3[data3['정보'] == '하늘상태'] = df


# In[530]:


data3


# In[ ]:





# In[ ]:




