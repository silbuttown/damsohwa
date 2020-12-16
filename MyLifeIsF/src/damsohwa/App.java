package damsohwa;


import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;

public class App {
    private FirebaseOptions option;
    private Firestore db; 
    private final static String PATH = "C:\\Users\\SM820\\damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json";
    private final static String COLLECTION_NAME = "Damsohwa";
    public String rval;
 //   public static void main( String[] args ) {
 //      App app = new App();
//        try {
//            app.init();
//            app.makeDatabaseConn();
//            app.sel("suhyeon");
//        	app.select();
//            app.insert();
//            app.update();
//          //  app.delete();       
//        } catch (Exception e) {
 //           e.printStackTrace();
 //       }
 //   }
    
    public void init() throws Exception{
        FileInputStream refreshToken = new FileInputStream(PATH);
        option = new FirebaseOptions.Builder()
                .setCredentials(GoogleCredentials.fromStream(refreshToken))
                .setDatabaseUrl("https://damsohwa-4d3f4-default-rtdb.firebaseio.com")  //내 저장소 주소 .firebaseio.com"
                .build();
        FirebaseApp.initializeApp(option);
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
    public String sel(String name) {    	 
    	db.collection(COLLECTION_NAME).document(name).addSnapshotListener( (DocumentSnapshot, firebaseFirestoreException)->{    		
    	     System.out.println("value : " + DocumentSnapshot.getData());
    	      rval = DocumentSnapshot.getData().toString();    	      
    	});		
			return rval;
		
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

//    public void delete(){  //삭제
//        db.collection(COLLECTION_NAME).document("test").delete();
//    }
}
