package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/cal")
public class Sv5_cal extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");		//HTML의 문자를 받아올때 utf-8로 지정해서 받아옴
		String numb1=req.getParameter("num1");
		String numb2=req.getParameter("num2");
		String cal=req.getParameter("cal");
		int num1 = Integer.parseInt(numb1);
		int num2 = Integer.parseInt(numb2);
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out= resp.getWriter();
		out.print("<html><body>선택된 연산자는 "+cal+"<br>"+num1+cal+num2+ "의 연산결과 : ");
		if(cal.equals("+")) {
			out.print(num1+num2+"<br>");
		}
		if(cal.equals("-")) {
			out.print(num1-num2+"<br>");
		}
		if(cal.equals("*")) {
			out.print(num1*num2+"<br>");
		}
		if(cal.equals("/")) {
			out.print(num1/num2+"<br>");
		}
		out.print("</body></html>");
	}
}
