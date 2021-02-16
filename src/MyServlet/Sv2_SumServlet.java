package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Sum")
public class Sv2_SumServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		String no = req.getParameter("num");
		int num=Integer.parseInt(no);
		int sum=0;
		for(int i=0; i<=num; i++) {
			sum+=i;
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<html><body><h1 style=color:#FFEE00>1 부터"+num+"까지수의 합은 "+sum+"</h1></body></html>");

	}
	

}
