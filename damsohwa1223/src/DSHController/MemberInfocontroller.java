package DSHController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSHModel.DSHInfo;

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
		DSHInfo info = new DSHInfo();
		
		System.out.println("--�������--------------------------------------------------------");		
		String wakeH = request.getParameter("wakeH"); // ���ð�
		System.out.println(wakeH);		
		String sleepH = request.getParameter("sleepH"); // ��ħ�ð�
		System.out.println(sleepH);		
		String takeMedi = request.getParameter("takeMedi"); // ���뿩��_�ִ�, ����
		System.out.println(takeMedi);
		int takeMediE =0;
		if(takeMedi.equals("�ִ�")) {
		takeMediE = Integer.parseInt(request.getParameter("takeMediE").toString()); // ����Ƚ��_1, 2, 3
		System.out.println(takeMediE);
		}
		
		info.setTakeMediE(takeMediE);
		
		String takeE[] = new String[takeMediE];
		int takeTime[] = new int[takeMediE];
		int takemin[] = new int[takeMediE];
		String time[] = new String[takeMediE];
		if(takeMedi.equals("�ִ�")) {
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
				if(takeE[i].equals("����")) {
					takeTime[i] += 12;				
					}
				time[i] = takeTime[i] +":"+ takemin[i];
				System.out.println("�ð� : "+time[i]);
			}
			
			info.setM_time(time);
		}
		System.out.println("-----------------------------------------------------------------------------");
		System.out.println("�������");
		
		info.setWakeH(wakeH);
		info.setSleepH(sleepH);
		info.setTakeMedi(takeMedi);
		System.out.println(info.toString());
		session.setAttribute("info", info);
		//response.sendRedirect("DamOrder2.jsp");
		/*String takeMediAP1 = request.getParameter("takeMediAP1"); // ����ð�_����, ����
		System.out.println(takeMediAP1);
		String takeMediT1 = request.getParameter("takeMediT1"); // ����ð� 12�ð�
		System.out.println(takeMediT1);
		String takeMediM1 = request.getParameter("takeMediM1"); //����ð�_10�д���
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
