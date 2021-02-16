package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/GuGuDan")
public class Sv4_GuGuDan extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String no = req.getParameter("menu");
		int dan = Integer.parseInt(no);
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<html><body>선택된 단은 "+no+"단입니다<br>");
		for(int i=1;i<10;i++) {
			out.println(dan+"*"+i+"="+dan*i+"<br>");
			
		}
		out.println("</body></html>");
		out.close();
	}
}
