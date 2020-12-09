#!/usr/bin/env python
# coding: utf-8

# In[320]:


key = 'urz15HMZIl7GH7VC1sxsnGwRWNAHv%2Bfo9bhWTmlP3P9i3tELJ2oomcBTQtNZBIsxXi5PmFAcw1Yajfb3xvGPsA%3D%3D'


# In[379]:


from datetime import datetime as dt
today = dt.today()
date = "%04d%02d%02d"%(today.year, today.month, today.day)


# In[380]:


time = '0200'


# In[381]:


url_api = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey={}&numOfRows=100&pageNo=1&base_date={}&base_time={}&nx=55&ny=127&dataType=JSON'.format(key,date,time)


# In[382]:


print(url_api)


# In[383]:


import requests
resp = requests.get(url_api)


# In[384]:


data = resp.json()['response']['body']['items']['item']


# In[327]:


for i in data:
    print(i['category'])


# In[328]:


import pandas as pd


# In[385]:


data_df = pd.DataFrame(data)


# In[386]:


data_df


# In[387]:


data_df.loc[:,['category','fcstValue']]


# In[388]:


li = ["POP",'REH','SKY','TMN','TMX','T3H']
for i in li:
    display(data_df[data_df['category'] == i])


# In[397]:


data1 = data_df.loc[:,["fcstDate",'fcstTime',"category","fcstValue"]]


# In[398]:


data1[(data1['category']=='POP') | (data1['category']=='SKY') | (data1['category']=='REH') 
     | (data1['category']=='T3H')|(data1['category']=='TMN')|(data1['category']=='TMX')]


# In[399]:


data1.columns = ["일자","시간","정보","측정값"]


# In[400]:


data1.loc[data1['정보']== 'POP', '정보'] = '강수확률'
data1.loc[data1['정보']== 'SKY', '정보'] = '하늘상태'
data1.loc[data1['정보']== 'TMN', '정보'] = '아침 최저기온'
data1.loc[data1['정보']== 'TMX', '정보'] = '낮 최고기온'


# In[408]:


data2 = data1[data1['일자']==date]


# In[409]:


data2[(data2['정보']=='강수확률') | (data2['정보']=='하늘상태') |(data2['정보']=='아침 최저기온')|(data2['정보']=='낮 최고기온')]


# In[ ]:


# 서비스 요청 시간을 02:10 이후로 설정하고 할것!


# In[ ]:





# In[ ]:




