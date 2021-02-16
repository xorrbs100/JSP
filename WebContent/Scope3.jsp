<!-- 
	속성이름은 STring 이고 속성값은 객체이다
 -->
<%@page import="java.util.Date"%>

<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>속성의 값설정을 다양하게 해보자</h3>
	<%
		//속성설정
		application.setAttribute("temp_file", new File("c:\\windows\\Temp"));
		request.setAttribute("request", new java.util.Date());
		session.setAttribute("ID", "홍길동");
		
		request.setAttribute("total", 265);
		request.setAttribute("avg", new Float(35.f));
		//속성값읽기
		Date date = (Date) request.getAttribute("request");
		String id = (String) session.getAttribute("ID");
		File temp = (File) application.getAttribute("temlp_file");
		
		int total=(int)request.getAttribute("total");
		float avg= (Float)request.getAttribute("avg");
		
	%>
	날짜 : <%=date %><br>
	아이디 : <%= id %><br>
	파일 : <%= temp %><br>
</body>
</html>