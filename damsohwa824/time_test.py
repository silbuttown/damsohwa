import time
import schedule
import datetime as dt

last_time = dt.datetime.now()
print('last_time %s'%last_time)
while True:
    check_time = dt.datetime.now()
    result = check_time - last_time
    if result > dt.timedelta(hours = 8):
#    print('check_time : %s'%check_time)
        print(result)
    time.sleep(1)
#check_time = None

#if dt.datetime.now().hour-check_time >= 8:
#    print(check_time)