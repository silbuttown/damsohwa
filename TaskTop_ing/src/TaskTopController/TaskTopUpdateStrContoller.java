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


@WebServlet("/updatestr.do")
public class TaskTopUpdateStrContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		TaskTopVO vo = (TaskTopVO)session.getAttribute("vo");
		TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
		System.out.println(dto.toString());
		TaskTopDAO dao = new TaskTopDAO();
		dao.StrUpdate(dto.getEMP_NO());
		vo = dao.TaskTopMember(dto);
		session.setAttribute("vo", vo);		
		response.sendRedirect("TaskTopAdmin_member.jsp");
		
	}
	
}
