import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member")
public class Servlet_member extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		Enumeration<String> enu=req.getParameterNames();
		
		
		while(enu.hasMoreElements()) {
			String name=(String)enu.nextElement();
			String[] values= req.getParameterValues(name);
			
			for(String value:values) {
				System.out.println("name :"+name+", value: "+value);
			}
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		String name=req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String [] mail=req.getParameterValues("mail");
		String[] hobby= req.getParameterValues("hobby");
		out.print("<html><body>"+name+"님 "+age+"세 "+gender+"<br>");
		out.print("수신메일 : ");
		for(String value : mail) {
			out.print(value+" , ");
		}
		out.print("<br>취미 : ");
		for(String value :hobby ) {
			out.print(value+" , ");
			
		}
		out.print("<br><hr>가입완료</body></html>");
	}
}
