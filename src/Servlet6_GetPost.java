import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login3")
public class Servlet6_GetPost extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget메소드 호출");
		doHandle(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("dopost메소드 호출");
		doHandle(req,resp);
	}
	protected void doHandle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//입력
		req.setCharacterEncoding("utf-8");
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		//출력
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		String data = "<html>";
		data+="<body>";
		data+="아이디 : "+id;
		data+="<br>";
		data+="비밀번호 : "+pw;
		data+="</body>";
		data+="</html>";
		out.print(data);
		out.close();
				
	}	
	
}
