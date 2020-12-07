package TaskTopController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import TaskTopM.TaskTopDAO;

@WebServlet("/sendMessage.do")
public class TaskTopSendMessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String message = request.getParameter("message");
		int emp_no = Integer.parseInt(request.getParameter("emp_no"));
		
		System.out.println("message : "+message+"emp_no : "+emp_no);
		
		TaskTopDAO dao = new TaskTopDAO();
		int cnt = dao.sendMessage(emp_no,message);
		
		response.sendRedirect("TaskTopAdmin.jsp");
	}

}
