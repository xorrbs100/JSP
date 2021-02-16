/*
	서블릿 컨트롤러 기능
		. 요청접수 
		. 요청받은 기능을 처리할 비즈니스로직 모델을 선택
		. 로직실행하고 결과를 저장
		. 결과를 뷰로 전송
		
	1) 컨트롤러방식
		- jsp로 이동해서 처리
	2) 커멘드 설계패턴 활용
		- 각 요청 처리 부분을 독립된 클래스를 통해 처리 

*/
package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Command")
public class C02_CmdServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		//1. 요청 접수
		req.setCharacterEncoding("utf-8");
		String cmd = req.getParameter("cmd");
		Object obj = null;
		
		//2. 요청에 따른 비즈니스 모델선택 
		String view = null;
		
		if(cmd==null) {
			//요청이 없을 때의 로직처리 - 예) 에러처리일수도 있고...
			view = "M02_view_null.jsp";
		}
		else if (cmd.equals("M03_member_join")) {
			//회원가입 로직처리 
			view = "M03_member_join.jsp";
		}
		else if (cmd.equals("M04_member_info")) {
			view = "M04_member_info.jsp";
		}else if (cmd.equals("M05_member_login")) {
			view = "M05_member_login.jsp";
		}
		//반환된 결과 값을 속성성
		req.setAttribute("result", obj);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(view);
		dispatcher.forward(req, resp);
	}
}




