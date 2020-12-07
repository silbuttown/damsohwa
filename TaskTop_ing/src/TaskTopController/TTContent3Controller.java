package TaskTopController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import TaskTopM.TaskTopDAO;
import TaskTopM.TaskTopDTO;
import TaskTopM.TaskTopVO;

@WebServlet("/content3.do")
public class TTContent3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		TaskTopDAO dao = new TaskTopDAO();		
		HttpSession session  = request.getSession();
		TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
		System.out.println("ºÎ¼­¸í : "+dto.getDEPT_NAME());
		ArrayList<TaskTopVO> list = dao.TTContent3(dto.getDEPT_NAME());
		session.setAttribute("dto", dto);
		session.setAttribute("list", list);
		response.sendRedirect("TaskTopEmpList.jsp");
	}

}
