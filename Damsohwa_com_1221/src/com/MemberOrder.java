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
		
		System.out.println("--�������--------------------------------------------------------");
		
		String damsohwa = request.getParameter("damsohwa"); // ����� ���� ȭ��
		System.out.println(damsohwa);
		
		String birth = request.getParameter("birth"); // ����� ���� + ���ó�¥(���ȭ����) => �Ϸù�ȣ
		System.out.println(birth);
		
		String user = request.getParameter("user"); // ����� �̸�
		System.out.println(user);
		
		String tel = request.getParameter("tel"); // ����� ����ó
		System.out.println(tel);
		
		String addr = request.getParameter("addr"); // ����� �ּ�_�����ּ�
		System.out.println(addr);
		
		Calendar cal = Calendar.getInstance();
		int month = cal.get(Calendar.MONTH)+1;
		int date = cal.get(Calendar.DATE);
		
		String loginNo = birth + month + date; // �α��� ������ �Ϸù�ȣ 
		
		System.out.println("--�������-------------------------------------------------------------------");
		System.out.println();
	}

}
