package TaskTopController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import TaskTopM.TaskTopDAO;
import TaskTopM.TaskTopDTO;
import TaskTopM.TaskTopVO;

@WebServlet("/Coffee.do")
public class TTCoffeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		int EMP_NO=Integer.parseInt(request.getParameter("EMP_NO"));
	      TaskTopDAO dao = new TaskTopDAO();
	      TaskTopVO vo = new TaskTopVO();
	      vo.setEMP_NO(EMP_NO);
	      int coffee = dao.CoffeeCheck(vo.getEMP_NO());
	    //  vo.setDAY_COFFEE(coffee);

	         response.setCharacterEncoding("EUC-KR");	              
	         System.out.println("Client 접속 확인");
	         response.getWriter().print("/"+coffee+"/");
	   }

	
	
	}


