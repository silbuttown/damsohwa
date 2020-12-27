import time
import schedule
import datetime as dt

check_time = None
soil = 30
last_time = dt.datetime.now()
print('last_time %s'%last_time)
while True:
    if soil <= 20:        
        if check_time is None:
            check_time = dt.datetime.now()
        else:
            result = dt.datetime.now()-check_time
            if result >= dt.timedelta(minutes = 2):
#                 Check2()
                print('emergancy')
            elif result >= dt.timedelta(minutes = 1):
#                 Check()
                print('warning')
#         soil()
    else :
        check_time = None        
#     check_time = dt.datetime.now()
#     result = check_time - last_time
#     if result > dt.timedelta(hours = 8):
# #    print('check_time : %s'%check_time)
#         print(result)
    time.sleep(1)
#check_time = None

#if dt.datetime.now().hour-check_time >= 8:
#    print(check_time)