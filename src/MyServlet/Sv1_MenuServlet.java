package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SV1_MenuServlet")
public class Sv1_MenuServlet extends HttpServlet {
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      req.setCharacterEncoding("UTF-8");
      String menu1 = req.getParameter("menu");
      
      resp.setContentType("text/html; charset=utf-8");
      
      PrintWriter out = resp.getWriter();
      
      out.println("<html><body>");
      out.println("<h2> 당신이 선택한 메뉴는 "+menu1+"입니다.</h2>");
      out.println("</body></html>");
      
      out.close();
      
   }
   
   
      
}