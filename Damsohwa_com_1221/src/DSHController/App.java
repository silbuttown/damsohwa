package DSHController;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import com.google.api.core.ApiFuture;
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

import DSHModel.DSHInfoVO;
import DSHModel.DSHsensorVO;

public class App {
    public FirebaseOptions option;
    public Firestore db; 
    private final static String PATH = "C:\\Users\\damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json";
    private final static String COLLECTION_NAME = "Damsohwa";  
//    public static void main( String[] args ) {
//       App app = new App();
//        try {
//            app.init();
//            app.makeDatabaseConn();
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
//    }
    
    public void init() throws Exception{
        FileInputStream refreshToken = new FileInputStream(PATH);
        option = new FirebaseOptions.Builder()
                .setCredentials(GoogleCredentials.fromStream(refreshToken))
                .setDatabaseUrl("https://damsohwa-4d3f4-default-rtdb.firebaseio.com")  //�� ����� �ּ� .firebaseio.com"                
                .build();
        FirebaseApp.initializeApp(option);
    }    

    public void makeDatabaseConn(){  //Firestore �ν��Ͻ� ����
        db = FirestoreClient.getFirestore();
    }
    
    public void select(){ //��ü Document��ȸ
        db.collection(COLLECTION_NAME).addSnapshotListener( (target, exception)->{
            System.out.println(" - select start - ");
            target.forEach( item->{
            System.out.println("primary id : "+item.getId() + "  ||  value : " + item.getData());
            });
            //System.out.println(target.getDocuments().get(1).get("plant"));
            //target.getDocuments().get(��������).get(�ʵ��̸�)
            System.out.println(" - select end - ");
        });
    }    
    
    //Document�̸��� �Է¹޾� �ش��ϴ� Document�� Field�� ����ϴ� �Լ�
    @SuppressWarnings("unchecked")
	public void selInfo(String id) throws InterruptedException, ExecutionException {
    	DSHInfoVO ivo = new DSHInfoVO();

    	CollectionReference damsohwa = db.collection(COLLECTION_NAME);
    	Query query = damsohwa.whereEqualTo("ID", id);
    	// retrieve  query results asynchronously using query.get()
    	ApiFuture<QuerySnapshot> querySnapshot = query.get();

    	for (DocumentSnapshot document : querySnapshot.get().getDocuments()) {
    		ivo.setWakeH(document.getString("g_time"));
    		ivo.setSleepH(document.getString("s_time"));
    		ivo.setM_time((ArrayList<String>)document.get("m_time"));
    		ivo.setTakeMediE( (document.getLong("takemediE")));
    		if((document.getLong("takemediE"))>0) {
    			ivo.setTakeMedi("�ִ�");
    		}	
    	  System.out.println(ivo.toString());
    	}
				
			}		
    	     //dVO = new damsohwa_sensorVO(Integer.parseInt(DocumentSnapshot.getString("ID")),Integer.parseInt(DocumentSnapshot.getString("bright")),Integer.parseInt(DocumentSnapshot.getString("flame")),Integer.parseInt(DocumentSnapshot.getString("gas")) ,Float.parseFloat(DocumentSnapshot.getString("humid")),DocumentSnapshot.getString("plant"),Integer.parseInt(DocumentSnapshot.getString("soil")),Float.parseFloat(DocumentSnapshot.getString("temp")) );		
    	     
   //	});		
   			
			//return dVO;
		
   
   
//    public void insert(){  //���
//        Map<Object, Object> item = new HashMap<Object, Object>();
//        item.put("name", "HELLO-WORLD5");
//        item.put("numbers", 5674);
//        item.put("booleans", false);
//        db.collection(COLLECTION_NAME).add(item);
//    }

    public void update(){  //����
        Map<String, Object> update = new HashMap<String, Object>();
        update.put("name", "HELLO-WORLD9");
        update.put("numbers", 2341);
        update.put("booleans", false);    	
        db.collection(COLLECTION_NAME).document("test").update(update);
    }
    
//    public void delete(){  //����
//        db.collection(COLLECTION_NAME).document("test").delete();
//    }
}
