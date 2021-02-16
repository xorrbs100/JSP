package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Color")
public class Sv3_ColorServlet extends HttpServlet{
	private static final long serialVersionUID= -449181714930331749L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cor = req.getParameter("color");
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out= resp.getWriter();
		out.print("<html><body style=background-color:"+cor+"></body></html>");
	}
}

