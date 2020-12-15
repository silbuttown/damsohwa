import schedule
import pygame
import time
import requests
import urllib.request


f = open("kakaokey.txt", 'r')
SECRET_KEY =f.readline()
f.close()
SECRET_KEY



url = 'https://kakaoi-newtone-openapi.kakao.com/v1/synthesize'
request = urllib.request.Request(url)
request.add_header('Host','kakaoi-newtone-openapi.kakao.com')
request.add_header('Content-Type','application/xml')
request.add_header('Authorization',f'KakaoAK {SECRET_KEY}')






def medicine():
    VoiceName = 'WOMAN_DIALOG_BRIGHT'
    text = "할머니! 약 드실 시간이에요. 오늘도 건강 하세요."
    data = "<speak><voice name='" + VoiceName + "'>" + text + "</voice></speak>"
    response = urllib.request.urlopen(request, data = data.encode('utf-8'))

    writeFile=open('medicine_time.mp3','wb')
    writeFile.write(response.read())
    writeFile.close()
    # 음성 출력
    pygame.mixer.init()
    pygame.mixer.music.load("medicine_time.mp3")
    pygame.mixer.music.play()
    time.sleep(5) # 문장이 5초 이상 될 것같은 경우 sleep 시간 조절.
    pygame.mixer.quit()
    

schedule.every().day.at("14:12").do(medicine) # 매일 해당 시각에 medicine 함수를 실행하겠습니다.


while True:
    
    schedule.run_pending()


pygame.mixer.init()
pygame.mixer.music.load("medicine_time.mp3")
pygame.mixer.music.play()
time.sleep(5)
pygame.mixer.quit()