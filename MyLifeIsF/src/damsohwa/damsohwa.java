package damsohwa;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/damsohwa")
public class damsohwa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		App app = new App();
		try {
			app.init();
			app.makeDatabaseConn();
			app.select();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
