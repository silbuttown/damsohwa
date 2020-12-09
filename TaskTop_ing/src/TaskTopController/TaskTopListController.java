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

@WebServlet("/list.do")
public class TaskTopListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String listname = request.getParameter("list");
		TaskTopDAO dao = new TaskTopDAO();
		TaskTopDTO dto = new TaskTopDTO();
		ArrayList<TaskTopDTO> list = dao.getAllList();
		
		HttpSession session = request.getSession();
	     
		session.setAttribute("list", list);
		if(listname.equals("list"))
		response.sendRedirect("TaskTopAdminList.jsp");
		else if(listname.equals("dlist")) {
			response.sendRedirect("TaskTopAdminCallList.jsp");
		}
	}
}
