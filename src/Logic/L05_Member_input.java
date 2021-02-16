package Logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.C03_CommandProcessor;

public class L05_Member_input implements C03_CommandProcessor{
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {
		
		req.setAttribute("input", "등록추가");
		
		return "member_input.jsp";
	
	}
	
}
