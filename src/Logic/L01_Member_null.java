package Logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.C03_CommandProcessor;

public class L01_Member_null implements C03_CommandProcessor {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("null","로직요청처리없음");
		return "M02_view_null.jsp";
	}

	
}
