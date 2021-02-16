import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.css.CalculatedValue;

@WebServlet("/calc")
public class Servlet5_ExchangeRate extends HttpServlet{
	
	public static final float USD_RATE=1086.20f;	//달러
	public static final float JPY_RATE=1041.97f;	//엔화
	public static final float CNY_RATE=166.34f;		//위안화
	public static final float GBP_RATE=1441.28f;	//파운드
	public static final float EUR_RATE=1318.81f;	//유로화
	String result =null;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//수행할 요청받아옴
		req.setCharacterEncoding("utf-8");
		
		String command = req.getParameter("command");
		String won = req.getParameter("won");
		String operator=req.getParameter("operator");
		
		//응답처리
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		//요청값이 null이 아니고 calculate이면 계산결과를 출력
		if(command !=null && command.equals("calculate") ) {
			String result = calculator(Float.parseFloat(won), operator);	//환율계산처리
			
			out.print("<html>");
			out.print("<font size=10>변환결과</font><br>");
			out.print("<font size=10>"+result+"</font><br>");
			
			out.print("<a href='/JSP3_ServeletGrammar/calc'>환율계산기</a>");
			out.print("</html>");
			return;
		}
		//요청값이 null이고 command 값이 calculate가 아니면 아래화면 출력
		out.print("<html><title>환율계산기</title>");
		out.print("<font size=5>환율계산기</font>");
		out.print("<form action='calc' name='frmCalc' method='get'><br><br>");
		out.print("원화 : <input type='text' name='won' size='10'><br><br>");
		out.print("<select name='operator'>");
		out.print("<option value='dollor'>달러</option>");
		out.print("<option value='en'>엔화</option>");
		out.print("<option value='wian'>위안화</option>");
		out.print("<option value='pound'>파운드</option>");
		out.print("<option value='euro'>유로</option>");
		out.print("</select>");
		out.print("<input type='hidden' name='command' value='calculate'><br><br>");
		//hidden : 사용자에게는 보이지 않는 숨겨진 입력필드를 정의한다.
		//			페이지나 콘텐츠내에서 그것을 볼수 있게 만드는 방법은 없다.
		//			폼 제출시 사용자가 변경해서는 안되는 데이터를 함께 보낼때 유용하게 사용한다.
		out.print("<input type='submit' value='변환'>");
		out.print("</form></html>");
		out.close();
	}
	
	//환율 계산 메소드
	private String calculator(float won, String operator) {
		
		if(operator.equals("dollor")) {
			result=String.format("%.6f", won/USD_RATE);
		}
		else if(operator.equals("en")) {
			result=String.format("%.6f", won/JPY_RATE);
		}
		else if(operator.equals("wian")) {
			result=String.format("%.6f", won/CNY_RATE);
		}
		else if(operator.equals("pound")) {
			result=String.format("%.6f", won/GBP_RATE);
		}
		else if(operator.equals("euro")) {
			result=String.format("%.6f", won/EUR_RATE);
		}
		return result;
	}
}





