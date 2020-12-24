package DSHController;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
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
import com.google.cloud.firestore.WriteResult;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;

import DSHModel.DSHinfoVO;
/**
 * Servlet implementation class NewMemberController
 */
public class NewMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();		
		DSHinfoVO info = (DSHinfoVO)session.getAttribute("info");
		App app = new App();
//		String PATH = "C:\\Users\\damsohwa-4d3f4-firebase-adminsdk-okod4-5427e232ce.json"; 
//		InputStream serviceAccount = new FileInputStream(PATH);
//	  	FileInputStream refreshToken = new FileInputStream(PATH);
//	  	//GoogleCredentials credentials = GoogleCredentials.getApplicationDefault();
//	  	FirebaseOptions option = new FirebaseOptions.Builder()
//	             .setCredentials(GoogleCredentials.fromStream(refreshToken))
//	             .setDatabaseUrl("https://damsohwa-4d3f4-default-rtdb.firebaseio.com")  //�� ����� �ּ� .firebaseio.com"                
//	             .build();
//	    FirebaseApp.initializeApp(option);		 
//	    Firestore db = FirestoreClient.getFirestore();	   
//	  	 
		
		 
		System.out.println("--�������--------------------------------------------------------");
		
		String plant = request.getParameter("damsohwa"); // ����� ���� ȭ��
		String user = request.getParameter("user"); // ����� �̸�		
		String tel = request.getParameter("tel"); // ����� ����ó		
		String addr = request.getParameter("addr"); // ����� �ּ�_�����ּ�		
		
		System.out.println(plant); 
		System.out.println(user);
		System.out.println(tel);
		System.out.println(addr);
		
		Calendar cal = Calendar.getInstance();
		int month = cal.get(Calendar.MONTH)+1;
		int date = cal.get(Calendar.DATE);		
		String birth = request.getParameter("birth"); // ����� ���� + ���ó�¥(���ȭ����) => �Ϸù�ȣ
		String loginNo = birth + month + date; // �α��� ������ �Ϸù�ȣ 		
		System.out.println("--�������-------------------------------------------------------------------");
		Map<String, Object> userData = new HashMap<>();
		userData.put("plant", plant);
		userData.put("tel",tel);
		userData.put("addr", addr);
		userData.put("ID",loginNo);
		userData.put("g_time", info.getWakeH());
		userData.put("s_time", info.getSleepH());
		userData.put("takeMediE",info.getTakeMediE());
		userData.put("bright",0);
		userData.put("flame",0);
		userData.put("gas",0);
		userData.put("humid",0);
		userData.put("soil",0);
		userData.put("temp",0);
		
		//ArrayList<String> time = new ArrayList<>();
		if(info.getTakeMedi().equals("�ִ�")) {
		/*	for(int i=0;i<info.getTakeMediE();i++) {
				time[i] = info.getTakeTime()[i]+info.getTakemin()[i];
				userData.put("m_time"+(i+1),time[i]);
			}*/
			userData.put("m_time", info.getM_time());
		}else {
			userData.put("m_time", null);
		}		
		
		try {
			app.init();
			app.makeDatabaseConn();
			DocumentReference docRef = app.db.collection("Damsohwa").document(user);
			ApiFuture<WriteResult> result = docRef.set(userData);
			System.out.println("Update time : " + result.get().getUpdateTime());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}

