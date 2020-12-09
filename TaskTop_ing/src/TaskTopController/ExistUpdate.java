package TaskTopController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import TaskTopM.TaskTopDAO;
import TaskTopM.TaskTopVO;
@WebServlet("/existupdate.do")
public class ExistUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    request.setCharacterEncoding("EUC-KR");
	String EMP_EXIST = request.getParameter("EMP_EXIST");
	int EMP_NO = Integer.parseInt(request.getParameter("EMP_NO")) ;
	
	TaskTopVO vo = new TaskTopVO();
	vo.setEMP_NO(EMP_NO);
	vo.setEMP_EXIST(EMP_EXIST);
	TaskTopDAO dao = new TaskTopDAO();
	
	String exist = dao.ExistUpdate(vo);
	
	response.setCharacterEncoding("EUC-KR");
	System.out.println("접속확인");
	//response.getWriter().print("/"+exist+"/");	
		
	}

}
