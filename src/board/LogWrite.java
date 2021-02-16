package board;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Log")
public class LogWrite extends HttpServlet{
	PrintWriter log;
	@Override
	public void init() throws ServletException {
		try {
			log = new PrintWriter(new FileWriter("c:/Test/log.txt"));
		}catch(IOException e) {
			System.out.println(e.getMessage());
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		GregorianCalendar gc = new GregorianCalendar();
		String msg = name + "님 안녕하세요 환영합니다.";
		log.printf("TF TT %s",gc,gc,msg);
		
		//화면출력
		out.print("<html><body>");
		out.print("<h2>"+msg+"</h2>");
		out.print("</body></html>");
		
		
		out.close();
		
	
	}
	@Override
	   public void destroy() {

	      if(log != null) {
	         
	         log.close();
	         
	      }
	   
	   }
}
