<!-- 
	1. 네트워크상에서 데이터통신시 데이터 구성
	
		------ 메시지몸체 : 요청헤드 : 요청방식(버전) ---- > 전송
	
	2. JSP가 서블릿으로 변환처리되는 과정
		
		. 동적웹을 만들기 위해 서블릿 클래스에서 JAVA코드를 HTML에 써주는 것은 불편한 일이다.
		. 이런 불편함을 없애기 위해서, HTML과 동일한 문서안에 자바코드를 삽입하여 작성하도록 한 문서가 JSP문서이다.
		. JSP파일은 자바코드가 들어있기 때문에 컴파일할 서버가 필요한데 이것이 WAS이다.
		. 여러종류중에서 톰캣이 대표적이다.
		. Tomcat속에 lib폴더.. 그속에 sasper.jar파일이 있다.
		. Jasper가 JSP파일을 class 파일로 컴파일 해놓는 역할을 한다.
		. JSP파일을 Jasper가 java로 변환하고 class로 컴파일해서 브라우저상에 JSP가 보이도록 하는 것이다.
		

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>hellow jsp 문구를 출력해 달라는 요청 접수</h3>
	
	<%
		String str = "Hellow JSP";
		out.println("jsp 파일과 servlet이 포함되어 있는 경로 불러오기<hr>");
		out.println("웹 어플리케이션 경로 : "+request.getContextPath()+"<br>");//프로젝트명
		out.println("웹 서블릿 경로 : "+request.getServletPath()+"<br>");//JSP파일
		
	%>
</body>
</html>