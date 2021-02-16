import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login5")
public class Servlet8_Servlet유효성검사 extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		//유효성 검증
		//정상입력일때
		if(id != null && (id.length() !=0)) {
			out.print("<html><body>");
			out.print(id+"님 로그인 하셨습니다.");
			out.print("</body></html>");
			
		}
		//비정상일때
		else {
			out.print("<html><body> 아이디를 입력해 주세요<br><a href='http://localhost:8081/JSP3_ServeletGrammar/J8_Servlet%ED%99%9C%EC%9A%A9%ED%95%9C%EC%9C%A0%ED%9A%A8%EC%84%B1%EA%B2%80%EC%82%AC.html'>로그인창으로 이동 </a></body></html>");
		}
	
	}
}
