package TaskTopController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import TaskTopM.*;

@WebServlet("/findexist.do")
public class TaskTopFineExistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String fname = request.getParameter("fname");
		TaskTopDAO dao = new TaskTopDAO();
		TaskTopVO vo = dao.ExistCheck(fname);
		System.out.println(vo.toString());	
		
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter();		
		//writer.print("<script>alert('해당사원은 부재중입니다.');");
		//writer.print("location.href='TaskTopMain.jsp;");
		//writer.println(PageUrl+";</script>");
		//writer.close();	
		System.out.println("부재여부 : "+vo.getEMP_EXIST());
		if(vo.getEMP_EXIST().equals("부재중")) {
			out.println("<script>alert('해당 사원은 부재중입니다.'); location.href='TaskTopAdmin_member.jsp';</script>");
			out.close();
			
		}else {
			out.println("<script>alert('해당 사원은 자리에 있습니다.'); location.href='TaskTopAdmin_member.jsp';</script>");	
			out.close();
		}
	}
		
}
