package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 수면시간, 약복용여부 받는 곳
 * Servlet implementation class MemberRootin
 */
@WebServlet("/MemberRootin")
public class MemberRootin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		System.out.println("--여기부터--------------------------------------------------------");
		
		String wakeH = request.getParameter("wakeH"); // 기상시간
		System.out.println(wakeH);
		
		String sleepH = request.getParameter("sleepH"); // 취침시간
		System.out.println(sleepH);
		
		String takeMedi = request.getParameter("takeMedi"); // 복용여부_있다, 없다
		System.out.println(takeMedi);
		
		String takeMediE= request.getParameter("takeMediE"); // 복용횟수_1, 2, 3
		System.out.println(takeMediE);
		
		String takeMediAP1 = request.getParameter("takeMediAP1"); // 복용시간_오전, 오후
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
		System.out.println("-----------------------------------------------------------------------------");
		System.out.println("여기까지");
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*
		if(takeMedi.equals("있다")) {
			
			String takeMediE = request.getParameter("takeMediE"); //복용횟수_1, 2, 3
			System.out.println(takeMediE);
			if(takeMediE.equals("1")) {
				String takeMediAP1 = request.getParameter("takeMediAP1"); //복용시간 오전/오후
				String takeMediT1 = request.getParameter("takeMediT1"); //복용시간_1~12시
				String takeMediM1 = request.getParameter("takeMediM1"); //복용시간_10분
				
				System.out.println(takeMediAP1);
				System.out.println(takeMediT1);
				System.out.println(takeMediM1);
				
			}else if(takeMediE.equals("2")) {
					String takeMediAP1 = request.getParameter("takeMediAP1"); //占쏙옙占쏙옙챨占�_占쏙옙占쏙옙, 占쏙옙占쏙옙
					String takeMediT1 = request.getParameter("takeMediT1"); //占쏙옙占쏙옙챨占�_1~12占쏙옙
					String takeMediM1 = request.getParameter("takeMediM1"); //占쏙옙占쏙옙챨占�_10占쏙옙 占쏙옙占쏙옙
					
					String takeMediAP2 = request.getParameter("takeMediAP2"); //占쏙옙占쏙옙챨占�_占쏙옙占쏙옙, 占쏙옙占쏙옙
					String takeMediT2 = request.getParameter("takeMediT2"); //占쏙옙占쏙옙챨占�_1~12占쏙옙
					String takeMediM2 = request.getParameter("takeMediM2"); //占쏙옙占쏙옙챨占�_10占쏙옙 占쏙옙占쏙옙
					
					System.out.println(takeMediAP1);
					System.out.println(takeMediT1);
					System.out.println(takeMediM1);
					
					System.out.println(takeMediAP2);
					System.out.println(takeMediT2);
					System.out.println(takeMediM2);
					
			}else if(takeMediE.equals("3")) {
				//for(int i=1; i<=3; i++) {
					String takeMediAP1 = request.getParameter("takeMediAP1"); //占쏙옙占쏙옙챨占�_占쏙옙占쏙옙, 占쏙옙占쏙옙
					String takeMediT1 = request.getParameter("takeMediT1"); //占쏙옙占쏙옙챨占�_1~12占쏙옙
					String takeMediM1 = request.getParameter("takeMediM1"); //占쏙옙占쏙옙챨占�_10占쏙옙 占쏙옙占쏙옙
					
					String takeMediAP2 = request.getParameter("takeMediAP2"); //占쏙옙占쏙옙챨占�_占쏙옙占쏙옙, 占쏙옙占쏙옙
					String takeMediT2 = request.getParameter("takeMediT2"); //占쏙옙占쏙옙챨占�_1~12占쏙옙
					String takeMediM2 = request.getParameter("takeMediM2"); //占쏙옙占쏙옙챨占�_10占쏙옙 占쏙옙占쏙옙
					
					String takeMediAP3 = request.getParameter("takeMediAP3"); //占쏙옙占쏙옙챨占�_占쏙옙占쏙옙, 占쏙옙占쏙옙
					String takeMediT3 = request.getParameter("takeMediT3"); //占쏙옙占쏙옙챨占�_1~12占쏙옙
					String takeMediM3 = request.getParameter("takeMediM3"); //占쏙옙占쏙옙챨占�_10占쏙옙 占쏙옙占쏙옙
					
					System.out.println(takeMediAP1);
					System.out.println(takeMediT1);
					System.out.println(takeMediM1);
					
					System.out.println(takeMediAP2);
					System.out.println(takeMediT2);
					System.out.println(takeMediM2);
					
					System.out.println(takeMediAP3);
					System.out.println(takeMediT3);
					System.out.println(takeMediM3);
				//}
			}
		}*/
		
		
		
				
		
		
		
		
	}

}
