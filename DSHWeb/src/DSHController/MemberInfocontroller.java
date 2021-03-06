package DSHController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;

import DSHModel.DSHinfoVO;

/**
 * Servlet implementation class MemberInfocontroller
 */
public class MemberInfocontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();		
		DSHinfoVO info = new DSHinfoVO();
		
		System.out.println("--여기부터--------------------------------------------------------");		
		int wakeH = Integer.parseInt(request.getParameter("wakeH")); // 기상시간
		System.out.println(wakeH);		
		int sleepH = Integer.parseInt(request.getParameter("sleepH")); // 취침시간
		System.out.println(sleepH);		
		String takeMedi = request.getParameter("takeMedi"); // 복용여부_있다, 없다
		System.out.println(takeMedi);
		int takeMediE =0;
		if(takeMedi.equals("있다")) {
		takeMediE = Integer.parseInt(request.getParameter("takeMediE").toString()); // 복용횟수_1, 2, 3
		System.out.println(takeMediE);
		}
		
		info.setTakeMediE((long) takeMediE);
		
		String takeE[] = new String[takeMediE];
		int takeTime[] = new int[takeMediE];
		int takemin[] = new int[takeMediE];
		ArrayList<String> time = new ArrayList<>();
	//	String time[] = new String[takeMediE];
		if(takeMedi.equals("있다")) {
			for(int i =0; i<takeMediE;i++) {
				takeE[i] = request.getParameter("takeMediAP"+(i+1));
				System.out.print("takeMediAP"+(i+1)+" ");
				//TakeMediAP1 2
				System.out.println(takeE[i]);
				takeTime[i] = Integer.parseInt(request.getParameter("takeMediT"+(i+1)));				
				System.out.print("takeMediT"+(i+1)+" ");
				System.out.println(takeTime[i]);
				takemin[i] = Integer.parseInt(request.getParameter("takeMediM"+(i+1)));
				System.out.print("takeMediM"+(i+1)+" ");
				System.out.println(takemin[i]);
				if(takeE[i].equals("오후")) {
					takeTime[i] += 12;				
					}
				time.add(String.format("%02d:%02d",takeTime[i],takemin[i]));
				//time[i] = takeTime[i] +":"+ takemin[i];
				System.out.println("시간 : "+time);
			}
			
			info.setM_time(time);
		}
		System.out.println("-----------------------------------------------------------------------------");
		System.out.println("여기까지");
		
		info.setWakeH(String.format("%02d:00",wakeH));
		info.setSleepH(String.format("%02d:00",sleepH));
		info.setTakeMedi(takeMedi);
		System.out.println(info.toString());
		session.setAttribute("info", info);
		
		String gson = new Gson().toJson(info);
        
        try {
            //ajax로 리턴해주는 부분
            response.getWriter().write(gson);
        } catch (JsonIOException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
		//response.sendRedirect("DamOrder2.jsp");
		/*String takeMediAP1 = request.getParameter("takeMediAP1"); // 복용시간_오전, 오후
		System.out.println(takeMediAP1);
		String takeMediT1 = request.getParameter("takeMediT1"); // 복용시간 12시간
		System.out.println(takeMediT1);
		String takeMediM1 = request.getParameter("takeMediM1"); //복용시간_10분단위
		System.out.println(takeMediM1);
		
		String takeMediAP2 = request.getParameter("takeMediAP2");
		System.out.println(takeMediAP2);
		String takeMediT2 = request.getParameter("takeMediT2");
		System.out.println(takeMediT2);
		String takeMediM2 = request.getParameter("takeMediM2");
		System.out.println(takeMediM2);
		
		String takeMediAP3 = request.getParameter("takeMediAP3");
		System.out.println(takeMediAP3);
		String takeMediT3 = request.getParameter("takeMediT3");
		System.out.println(takeMediT3);
		String takeMediM3 = request.getParameter("takeMediM3");
		System.out.println(takeMediM3);
		*/
		
	}

}
