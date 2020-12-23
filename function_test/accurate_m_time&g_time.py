import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import schedule
import time
from medicine_alarm import medicine

cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()


doc_ref = db.collection(u'Damsohwa').document(u'차세리')
#g_time = doc_ref.get().get(u'g_time')
m_time = doc_ref.get().get(u'm_time')


# Target document
DOCUMENT = '차세리'

print(len(m_time))
print(m_time[0])
print(m_time[1])

for i in range(0,len(m_time)):
    schedule.every().day.at(m_time[i]).do(medicine)
    