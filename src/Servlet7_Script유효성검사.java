import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login4")
public class Servlet7_Script유효성검사 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//네트워크에서 클라이언트의 요청된 전송값을 받아오기
		//1. 전송받은 데이터를 utf-8로 인코딩 통일시킨다.
		req.setCharacterEncoding("utf-8");
		//2. 톰캣 컨테이너가 만들어 놓은 request서블릿 객체를 이용해서 파라미터값을 읽어온다.
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		
		//******결과값 전송하기********
		
		//1. 응답처리할 데이터의 종류가 HTML이고 utf-8임을 지정
		resp.setContentType("text/html; charset=utf-8");
		
		//2. HttpSeveletResponse 객체의 getWrite()를 이용해서 출력스트림 PrintWriter객체를 준비한다.
		PrintWriter out = resp.getWriter();
		
		//3. 출력할 문자열 만든다.
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
