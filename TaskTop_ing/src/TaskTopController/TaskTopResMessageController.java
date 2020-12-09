package TaskTopController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import TaskTopM.TaskTopDAO;

@WebServlet("/TTResMessage.do")
public class TaskTopResMessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		int emp_no = Integer.parseInt(request.getParameter("emp_no"));
		TaskTopDAO dao = new TaskTopDAO();
		HttpSession session = request.getSession();
		
		
		System.out.println("메시지 보내는거 확인");
		String message = dao.resMessage(emp_no);
		session.setAttribute("message", message);
		int cnt =dao.delMessage(emp_no);
		if(cnt>0) {
			response.sendRedirect("TaskTopAdmin_member.jsp");
		}
	}

}
