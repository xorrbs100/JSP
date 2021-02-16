import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input2")
public class Servlet3_NotKnowManyValues extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		//전송되어온 name 속성들만 enumeration 객체 타입을 생성해 놓는다.
		Enumeration<String> enu=req.getParameterNames();
		
		//Enumeration객체속에 요소가 있는 동안 반복처리
		while(enu.hasMoreElements()) {
			//Enumeration 객체속에서 요소를 꺼내와서 변수에 저장
			String name = (String)enu.nextElement();	//name하나를 꺼내와서 문자열 타입으로 전환
			String [] values = req.getParameterValues(name);	//name에 해당하는 값을 req객체에서 꺼내와서 values배열에 저장
			
			for(String value : values) {
				System.out.println("name: "+name+",value: "+value);
				
			}
			
		}
		
	}
}
