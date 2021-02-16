package Logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.C03_CommandProcessor;

public class L04_Member_login implements C03_CommandProcessor{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {

		//회원 로그인 처리 모델
		req.setAttribute("login","로그인");
		
		return "M05_Member_login.jsp";
	}

}
