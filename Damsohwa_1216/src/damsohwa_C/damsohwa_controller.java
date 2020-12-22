package damsohwa_C;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.ExecutionException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.api.core.ApiFuture;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.CollectionReference;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;

import damsohwa.App;
import damsohwa_M.damsohwa_sensorVO;

@WebServlet("/damsohwa_controller")
public class damsohwa_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();		
		String name = request.getParameter("name");		
		name = "suhyeon";		
		String PATH = "C:\\Users\\SM820\\Documents\\damsohwa\\damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json";	   
	    FirebaseOptions option;	    
		
		FileInputStream refreshToken = new FileInputStream(PATH);
			     option = new FirebaseOptions.Builder()
			             .setCredentials(GoogleCredentials.fromStream(refreshToken))
			             .setDatabaseUrl("https://damsohwa-4d3f4-default-rtdb.firebaseio.com")  //郴 历厘家 林家 .firebaseio.com"                
			             .build();
		 FirebaseApp.initializeApp(option);		 
		 Firestore db = FirestoreClient.getFirestore();
		
		 DocumentReference docRef = db.collection("Damsohwa").document(name);
			ApiFuture<DocumentSnapshot> future = docRef.get();		
				
						float soil =0;
						try {
							DocumentSnapshot document;					
							document = future.get();
							damsohwa_sensorVO dsVO = new damsohwa_sensorVO();
									dsVO.setBright(Integer.parseInt(document.get("bright").toString()));
									dsVO.setFlame(Integer.parseInt(document.get("flame").toString()));
									dsVO.setGas(Integer.parseInt(document.get("gas").toString()));
									dsVO.setHumid(Float.parseFloat(document.get("humid").toString()));
									dsVO.setPlant(document.get("plant").toString());
									dsVO.setSoil(Integer.parseInt(document.get("bright").toString()));
									dsVO.setTemp(Float.parseFloat(document.get("temp").toString()));
									dsVO.setFireCheck(document.get("fireCheck").toString());
//							soil = Float.parseFloat(future.get().get("soil").toString());							
//								System.out.println("soil : "+soil);
							session.setAttribute("dsVO",dsVO );
							
							response.sendRedirect("DamStatistics.jsp");
							
							
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
					
					
		
		
		
//		App app = new App();
//		String soil = app.sel_soil(name);
//		System.out.println(soil);
//		while(sVO==null) {
//		 try {
//				Thread.sleep(5000);
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
		
		
		
	}

}
