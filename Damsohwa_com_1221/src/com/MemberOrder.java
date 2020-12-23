package com;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberOrder
 */
@WebServlet("/MemberOrder")
public class MemberOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
request.setCharacterEncoding("utf-8");
		
		System.out.println("--여기부터--------------------------------------------------------");
		
		String damsohwa = request.getParameter("damsohwa"); // 사용자 선택 화분
		System.out.println(damsohwa);
		
		String birth = request.getParameter("birth"); // 사용자 생일 + 오늘날짜(담소화생일) => 일련번호
		System.out.println(birth);
		
		String user = request.getParameter("user"); // 사용자 이름
		System.out.println(user);
		
		String tel = request.getParameter("tel"); // 사용자 연락처
		System.out.println(tel);
		
		String addr = request.getParameter("addr"); // 사용자 주소_수령주소
		System.out.println(addr);
		
		Calendar cal = Calendar.getInstance();
		int month = cal.get(Calendar.MONTH)+1;
		int date = cal.get(Calendar.DATE);
		
		String loginNo = birth + month + date; // 로그인 가능한 일련번호 
		
		System.out.println("--여기까지-------------------------------------------------------------------");
		System.out.println();
	}

}
