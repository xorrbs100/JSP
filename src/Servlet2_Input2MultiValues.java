import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input1")
public class Servlet2_Input2MultiValues extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1. 전송받는 데이터의 인코딩을 통일시킨다 - utf-8
		req.setCharacterEncoding("utf-8");
		
		//2. 값이 1:1일때
		String id=req.getParameter("user_id");
		String pw=req.getParameter("user_pw");
		
		//3. 값이 1:N 일때
		String [] subject = req.getParameterValues("subject");
		
		//4. 배열의 값을 출력
		try {
			System.out.println("회원 아이디는 : "+id);
			System.out.println("회원 비밀번호 : "+pw);
			System.out.println(subject[0]);
			System.out.println(subject[1]);
			System.out.println(subject[2]);
			for(String str: subject) {
				System.out.println("선택한 과목 : "+str);
			}
		}
		catch(IndexOutOfBoundsException e1){
			System.out.println("범위를 초과했습니다.");
		}catch(NullPointerException e2) {
			System.out.println("입력되지 않았습니다");
		}
	}
}
