package damsohwa;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/")
public class damsohwa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		App app = new App();
		try {
			app.init();
			app.makeDatabaseConn();
			//app.select();
			String rval =app.sel("suhyeon");
			if(rval!=null)
				System.out.println(rval);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
