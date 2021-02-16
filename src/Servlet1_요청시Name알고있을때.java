import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login1")
public class Servlet1_요청시Name알고있을때 extends HttpServlet {
	
	@Override
	public void init() throws ServletException {

	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1.전송받은 데이터를 utf-8로 인코딩
		req.setCharacterEncoding("utf-8");
		
		//2. 톰캣 컨테이너가 만들어 놓은 요청 서블릿 객체를 이용해서 알고있는 name의 값을 읽어오기
		String id=req.getParameter("user_id");
		String pw=req.getParameter("user_pw");
		
		//3. 출력폼 없이 콘솔로 출력
		System.out.println("회원 아이디 : "+id);
		System.out.println("회원 비밀번호 : "+pw);
		
	}
	
	@Override
	public void destroy() {
		
	
	}
}
