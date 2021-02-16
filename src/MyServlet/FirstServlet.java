/*
 	   1. 서블릿 
   
      . 서버쪽에서 실행되면서 클라이언트의 요청에 따라 동적으로 서비스를 제공하는 
         자바클래스 (서블릿클래스), 컴파일(서블릿)되어 메모리에 상주되어 작동한다. 
      . 서블릿은 자바로 작성, 자바의 모든 특성을 가진다. 
      . 자바와 다른점은 서블릿은 독자적으로 실행되지 못하고 톰캣과 같은 서버에서 실행된다는 것.
   
   2. 동작과정
      
      클라이언트 ---요청 ---> 웹서버 --- 위임 ---> WAS --- 호출 --- 서블릿  ---> 처리 (실행)
           <--- 응답 ---      <---결과---     <--- 결과 ---      <---
           
   3. 서블릿기능
      
      . 정적인데이터서비스는 웹서버로 충분하지만
      . 쇼핑몰의 데이터베이스의 데이터들이 실시간으로 변화하며 동적으로 처리가 필요
      . 서버쪽에서 서블릿이 처리해 주게 된다. 
      
   4. 특징
   
      . 서버에서 동작 
      . 정적웹의 보완기능으로 동적웹을 구현
      . 객체 지향으로 특징갖고 
      . 보안기능을 적용하기 쉽다. 
      . 웹 브라우저에 요청 할 때 실행된다.  
      
   5. 서블릿의 API 
   
      
         Servlet         ServletConfig      <인터페이스>
               GenericServlet            <추상클래스>
                  |
                  
               HTTPServlet               <클래스>
               
               
         1) Servlet interface
            . javax.servlet 패키지 속에 있음
            . init(), service(), destroy(), getServletInfo(), getServletConfig()
            
         2) ServletConfig interface
            . javax.servlet 패키지
            . getImitParameter(), getInitParameterNames()
            . getServletContext(), getServletName()
            
         3) GenericServlet
            . javax.servlet 패키지
            . 상위 두개의 인터페이스를 일반적인 서블릿 기능으로 구현한 클래스 
         4) HTTPServlet 클래스 
            . javax.servlet 패키지 
            . 웹브라우저에서 서블릿기능
            . 웹브라우저 기반 서비스를 제공하는 서블릿을 만들 때 상속받아 사용
            
            
            . init()
            . doGet(HttpServletRequest req, HttpServletResponse resp)   - get 방식 
            . doPost(HttpServletRequest req, HttpServletResponse resp)   - post 방식
            . destroy()
            
            
            * 클라이언트 요청 -> service() -> request 종류에 따라 doGet/ doPost() 호출 실행
                   
            
   6. 생명주기 
      
      1) 초기화      init()
      2) 작   업       doGet(), doPost()
      3) 종   료       destroy()   
   

  */
package MyServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	
	
	@Override
	public void init() throws ServletException {	
		// TODO Auto-generated method stub
	System.out.println("이닛메소드 실행");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget메소드 실행");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
	

}
