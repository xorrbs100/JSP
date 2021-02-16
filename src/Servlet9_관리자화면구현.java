import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login6")
public class Servlet9_관리자화면구현 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		//정상입력 확인
		if(id!=null && (id.length()!=0)) {
			//관리자
			if(id.equals("admin")&&pw.equals("xorrbs")) {
				out.print("<html><body><font size='12'>");
				out.print("관리자로 로그인 되었습니다.<br>");
				out.print("</font>");
				out.print("<input type='button' value='회원정보수정'>");
				out.print("<input type='button' value='회원정보삭제'>");
				out.print("</body></html>");
			}
			//일반인
			else {
				out.print(id+"님 로그인 되었습니다.<br>");
			}
		}
		//비정상일때
		else {
			out.print("<html><body> 아이디를 입력해 주세요<br><a href='http://localhost:8081/JSP3_ServeletGrammar/J9_관리자화면구현.html'>로그인창으로 이동 </a></body></html>");
			
		}

	}
}
