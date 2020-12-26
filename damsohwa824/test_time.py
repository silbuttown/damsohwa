import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

COLLECTION = 'Damsohwa'
DOCUMENT = 'RaspberryPi'

cred = credentials.Certificate("damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json")
firebase_admin.initialize_app(cred)
db=firestore.client()

doc_ref = db.collection(COLLECTION).document(DOCUMENT)
print(doc_ref.get().get(u'g_time'))
print(doc_ref.get().get(u'm_time'))

# print(doc_ref.get('g_time'))
# print(doc_ref.getstring('m_time'))