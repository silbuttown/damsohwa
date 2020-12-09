package TaskTopController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import TaskTopM.TaskTopDAO;
import TaskTopM.TaskTopDTO;
import TaskTopM.TaskTopVO;

@WebServlet("/login.do")
public class TaskTopLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		TaskTopDAO dao= new TaskTopDAO();
		TaskTopDTO dto = new TaskTopDTO(id,pw);
		dto = dao.TaskTopLogin(dto);
		System.out.println(dto.toString());
		TaskTopVO vo = dao.TaskTopMember(dto);
		System.out.println(vo.toString());
		HttpSession session = request.getSession();
		session.setAttribute("dto", dto);
		//System.out.println(vo.toString());
		session.setAttribute("vo",vo);
		if(dto.getEMP_NO()==0) {
			response.sendRedirect("TaskTopLoginFail.jsp");
		}
		else if(dto.getEMP_ID().equals("admin")) {
			System.out.println("관리자모드");			
			response.sendRedirect("TaskTopAdmin.jsp");
			
		}else{
			System.out.println("사원모드");
			response.sendRedirect("/TaskTop_ing/TTResMessage.do?emp_no="+vo.getEMP_NO());
			//response.sendRedirect("TaskTopAdmin_member.jsp");
			
		}
	}

}
