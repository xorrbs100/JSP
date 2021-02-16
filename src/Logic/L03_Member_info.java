package Logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.C03_CommandProcessor;

public class L03_Member_info implements C03_CommandProcessor {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {
		
		//회원정보 수정처리를 하는 비즈니스 모델입닌다. 
		req.setAttribute("info", "회원정보");
		return "M04_member_info.jsp";
	}

}
