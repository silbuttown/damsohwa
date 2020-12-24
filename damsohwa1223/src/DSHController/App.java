package DSHController;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import com.google.api.core.ApiFuture;
import com.google.api.services.storage.Storage.BucketAccessControls.List;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.CollectionReference;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.Query;
import com.google.cloud.firestore.QuerySnapshot;
import com.google.cloud.storage.spi.v1.RpcBatch.Callback;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;

import DSHModel.DSHinfoVO;
import DSHModel.DSHinfoVO;
import DSHModel.DSHsensorVO;

public class App {
    public FirebaseOptions option;
    public Firestore db; 
    private final static String PATH = "C:\\Users\\damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json";
    private final static String COLLECTION_NAME = "Damsohwa";  
    public static void main( String[] args ) {
//       App app = new App();
//        try {
//            app.init();
//            app.makeDatabaseConn();
//            app.selInfo("01011223");
//            app.sel("suhyeon");
//            System.out.println(dVO.toString());
//            String ret = app.sel_soil("suhyeon");            
//            System.out.println(ret);
//        	app.select();
//            app.insert();
//            app.update();
//          //  app.delete();       
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }
    
    public void init() throws Exception{    	
    	
        FileInputStream refreshToken = new FileInputStream(PATH);
        FirebaseApp firebaseApp = null;
        java.util.List<FirebaseApp> firebaseApps = FirebaseApp.getApps();
         
        if(firebaseApps != null && !firebaseApps.isEmpty()){
                     
            for(FirebaseApp app : firebaseApps){
                if(app.getName().equals(FirebaseApp.DEFAULT_APP_NAME)) {
                    firebaseApp = app;
                }
            }
                     
        }else{
        option = new FirebaseOptions.Builder()
                .setCredentials(GoogleCredentials.fromStream(refreshToken))
                .setDatabaseUrl("https://damsohwa-4d3f4-default-rtdb.firebaseio.com")               
                .build();
        FirebaseApp.initializeApp(option);
        }
    }    

    public void makeDatabaseConn(){  //Firestore 인스턴스 생성
        db = FirestoreClient.getFirestore();
    }
    
    public void select(){ //전체 Document조회
        db.collection(COLLECTION_NAME).addSnapshotListener( (target, exception)->{
            System.out.println(" - select start - ");
            target.forEach( item->{
            System.out.println("primary id : "+item.getId() + "  ||  value : " + item.getData());
            });
            //System.out.println(target.getDocuments().get(1).get("plant"));
            //target.getDocuments().get(문서순서).get(필드이름)
            System.out.println(" - select end - ");
        });
    }    
    
    //Document이름을 입력받아 해당하는 Document의 Field를 출력하는 함수
    @SuppressWarnings("unchecked")
	public DSHinfoVO selInfo(String id) throws InterruptedException, ExecutionException {
    	DSHinfoVO ivo = new DSHinfoVO();

    	CollectionReference damsohwa = db.collection(COLLECTION_NAME);
    	Query query = damsohwa.whereEqualTo("ID", id);
    	// retrieve  query results asynchronously using query.get()
    	ApiFuture<QuerySnapshot> querySnapshot = query.get();

    	for (DocumentSnapshot document : querySnapshot.get().getDocuments()) {
    		ivo.setID(document.getString("ID"));
    		ivo.setWakeH(document.getString("g_time"));    		
    		ivo.setSleepH(document.getString("s_time"));
    		ivo.setM_time((ArrayList<String>)document.get("m_time"));
    		System.out.println("takeMediE : "+document.getLong("takeMediE"));
    		ivo.setTakeMediE(document.getLong("takeMediE"));
    		if((document.getLong("takeMediE"))>0) {
    			ivo.setTakeMedi("있다");
    		}	
    	  
    	}return ivo;
				
			}
   public DSHsensorVO selSensor(String id) throws InterruptedException, ExecutionException {
	   DSHsensorVO svo = new DSHsensorVO();
	   CollectionReference damsohwa = db.collection(COLLECTION_NAME);
	   Query query = damsohwa.whereEqualTo("ID", id);
	   ApiFuture<QuerySnapshot> querySnapshot = query.get();
	   
	   for (DocumentSnapshot document : querySnapshot.get().getDocuments()) {
		   svo.setID(Integer.parseInt(document.getString("ID")));
		   svo.setBright(Integer.parseInt(document.getString("bright")));
		   svo.setFlame(Integer.parseInt(document.getString("flame")));
		   svo.setGas(Integer.parseInt(document.getString("gas")));
		   svo.setHumid(Float.parseFloat(document.getString("humid")));
		   svo.setPlant(document.getString("plant"));
		   svo.setSoil(Integer.parseInt(document.getString("soil")));
		   svo.setTemp(Float.parseFloat(document.getString("temp")));
		  
	   }	   
	   return svo;
   }
   
   
//    public void insert(){  //등록
//        Map<Object, Object> item = new HashMap<Object, Object>();
//        item.put("name", "HELLO-WORLD5");
//        item.put("numbers", 5674);
//        item.put("booleans", false);
//        db.collection(COLLECTION_NAME).add(item);
//    }

    public void update(){  //수정
        Map<String, Object> update = new HashMap<String, Object>();
        update.put("name", "HELLO-WORLD9");
        update.put("numbers", 2341);
        update.put("booleans", false);    	
        db.collection(COLLECTION_NAME).document("test").update(update);
    }    

}
