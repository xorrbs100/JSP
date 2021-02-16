package board;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Fibonacci")
public class Fibonacci extends HttpServlet{
	private BigInteger arr[];
	@Override
	public void init() throws ServletException {
	        arr = new BigInteger[100];
	        arr[0] = new BigInteger("1");
	        arr[1] = new BigInteger("1");
	        for(int cnt = 2; cnt < arr.length; cnt++)
	            arr[cnt] = arr[cnt-2].add(arr[cnt-1]);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String str = req.getParameter("num");
		int num = Integer.parseInt(str);
		if(num>100) {
			num=100;
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<HTML>");
        out.println("<HEAD><TITLE>피보나치 수열</TITLE></HEAD>");
        out.println("<BODY>");
      
        for(int i = 0; i < num; i++) {
            out.println(i+1+"번째 피보나치 : "+arr[i] + "<br>");
        }
        out.println("</BODY></HTML>");
		out.close();
	}

	
}
