package damsohwa_C;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import damsohwa.App;
import damsohwa_M.damsohwa_sensorVO;

@WebServlet("/damsohwa_controller")
public class damsohwa_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();		
		String name = request.getParameter("name");
		App app = new App();
		damsohwa_sensorVO sVO = app.sel(name);
//		while(sVO==null) {
//		 try {
//				Thread.sleep(5000);
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
		session.setAttribute("svo", sVO);
		response.sendRedirect("DamStatistics.jsp");
		
		
	}

}
