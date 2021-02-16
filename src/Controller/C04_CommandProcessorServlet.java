package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CommandProcessor")
public class C04_CommandProcessorServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		String cmd = req.getParameter("cmd");

		C03_CommandProcessor processor = null;

		String view = null;
		if (cmd == null) {
			processor = new Logic.L01_Member_null();
		} else if (cmd.equals("member_join")) {
			processor = new Logic.L02_Member_join();

		} else if (cmd.equals("member_info")) {
			processor = new Logic.L03_Member_info();
		} else if (cmd.equals("member_login")) {
			processor = new Logic.L04_Member_login();
		}

		// 처리결과 객체화
		view = processor.process(req, resp);

		// 처리결과 전송
		RequestDispatcher dispatcher = req.getRequestDispatcher(view);
		dispatcher.forward(req, resp);
	}
}
