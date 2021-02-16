package Controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControllerServlet")
public class C01_MvcServlet extends HttpServlet{

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. 요청접수 
			req.setCharacterEncoding("utf-8");
			String param = req.getParameter("name");
			
		//2. 비즈니스 로직처리
			Object obj = null;
			
			if(param == null) {
				obj = new String("hello MVC");
			}
			else {
				obj = new Date();
			}
		//3. 처리결과 객체로 저장
			req.setAttribute("result", obj);
		
		//4. 서블릿이 모델에서 처리한 결과로 만들어놓은 객체를 전송
			RequestDispatcher dispatcher = req.getRequestDispatcher("M01_MvcVeiw.jsp");
			dispatcher.forward(req, resp);
		}
}
