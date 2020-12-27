package DSHController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSHModel.DSHinfoVO;
import DSHModel.DSHsensorVO;
/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		DSHinfoVO ivo = new DSHinfoVO();
		DSHsensorVO svo = new DSHsensorVO();
		System.out.println("id : "+id);
//		id = "02021223";
		App app = new App();
		try {
			app.init();			
			app.makeDatabaseConn();
			ivo = app.selInfo(id);
			svo = app.selSensor(id);
			System.out.println(ivo.toString());
			System.out.println(svo.toString());
			session.setAttribute("ivo", ivo);
			session.setAttribute("svo", svo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		if(ivo.getCheck().equals("특이사항 없음")) {
		response.sendRedirect("DamHome.jsp");
		}
		else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('어르신에게 문제가 생겼습니다!!\\n특이사항을 확인해 주세요'); location.href='"+"DamStatistics.jsp"+"';</script>");
			writer.close();	
		}
	}

}
