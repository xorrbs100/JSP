package Logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.C03_CommandProcessor;

public class L02_Member_join implements C03_CommandProcessor{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {
		
		//회원가입을 처리하는 비즈니스 모델
		req.setAttribute("join", "회원가입");
		return "M03_member_join.jsp";
	}

}
