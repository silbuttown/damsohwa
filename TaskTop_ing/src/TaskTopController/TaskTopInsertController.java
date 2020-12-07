package TaskTopController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import TaskTopM.*;


@WebServlet("/insert.do")
public class TaskTopInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String deptName =request.getParameter("deptName");		
		String name = request.getParameter("name");
		String position =request.getParameter("position");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");		
		System.out.println(deptName);
		System.out.println(name);
		System.out.println(position);
		System.out.println(id);
		System.out.println(pw);
		HttpSession session = request.getSession();
		TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
		
		TaskTopDTO dto1 = new TaskTopDTO(deptName, name, position, id, pw);
		TaskTopDAO dao = new TaskTopDAO();
		int cnt= dao.TaskTopAdminInsert(dto1);
		if(cnt>0) {
		cnt = dao.TaskTopInfoInsert(dto1);
		}
		if(cnt>0) {				
			System.out.println("관리자모드");			
			response.sendRedirect("TaskTopAdmin.jsp");
	
}
	}
}

