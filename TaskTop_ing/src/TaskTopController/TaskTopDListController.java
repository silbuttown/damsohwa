package TaskTopController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import TaskTopM.TaskTopDAO;
import TaskTopM.TaskTopDTO;
import TaskTopM.TaskTopVO;

@WebServlet("/dlist.do")
public class TaskTopDListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String dept =request.getParameter("dept");
		System.out.println("선택된 부서 : " +dept);
		TaskTopDAO dao = new TaskTopDAO();
		ArrayList<TaskTopVO> list=dao.getDList(dept);			
		
	     
		session.setAttribute("list", list);
		response.sendRedirect("TaskTopAdminDList.jsp");
		
	}

}
