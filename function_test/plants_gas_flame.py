import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import time
import urllib.request
import requests
import pygame

# cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
# firebase_admin.initialize_app(cred)
# db=firestore.client()
# 
# 
# doc_ref = db.collection(u'Damsohwa').document(u'RaspberryPi')
# 
# 
# try:
#     doc = doc_ref.get()
#     print(u'Document data : {}'.format(doc.to_dict()))
# 
# except :
#     print(u'No such document!')
# 
# 
# doc.to_dict()
# data_df = pd.DataFrame(doc.to_dict(), index=[0]).astype('float')
# 
# 
# 
# 
# data = doc.to_dict()
# data_df
# 
# 
# 
# 
# 
# float(data['soil'])
# 
# 
# damsohwa = data_df.loc[:,['soil','temp','bright','humid']]
# 
# 
# 
# gas = data_df.loc[:,['gas']]
# 
# 
# 
# flame = data_df.loc[:,['flame']]
# 
# 
# damsohwa.columns = ["수분","온도","조도","습도"]
# damsohwa

f = open("kakaokey.txt", 'r')
SECRET_KEY =f.readline()
f.close()
SECRET_KEY


url = 'https://kakaoi-newtone-openapi.kakao.com/v1/synthesize'
request = urllib.request.Request(url)
request.add_header('Host','kakaoi-newtone-openapi.kakao.com')
request.add_header('Content-Type','application/xml')
request.add_header('Authorization',f'KakaoAK {SECRET_KEY}')


def gas():   
    VoiceName = 'WOMAN_DIALOG_BRIGHT'

    text = "할머니! 혹시 가스불 켜 놓으셨나요? 가스불을 꼭 확인해주세요!!"
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('gas.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()

    pygame.mixer.init()
    pygame.mixer.music.load("gas.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()


def flame():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'

    text = "할머니! 집에 불이 날 것 같아요!! 가스불을 확인해주세요!!!"
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('flame.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()

    pygame.mixer.init()
    pygame.mixer.music.load("flame.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()    



def bright():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'

    text = "할머니! 집이 너무 어두워요 귀신 나오겠어요!! 불 좀 켜주세요!!"
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('bright.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()

    pygame.mixer.init()
    pygame.mixer.music.load("bright.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()    



def soil():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'

    text = "할머니! 목 말라요!! 물 좀 주세요!!!"
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('soil.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()

    pygame.mixer.init()
    pygame.mixer.music.load("soil.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()        



def humid():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'

    text = "할머니! 너무 건조해서 다 말라 버렸어요!! 물 좀 주세요!!!"
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('humid.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()

    pygame.mixer.init()
    pygame.mixer.music.load("humid.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()    


def temp():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'
    text = "할머니! 너무 추워서 꽁꽁 얼어 버렸어요!! 보일러를 켜 주세요!!!"        
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('temp.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()

    pygame.mixer.init()

    pygame.mixer.music.load("temp.mp3")
    pygame.mixer.music.play()
    time.sleep(7) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()   
