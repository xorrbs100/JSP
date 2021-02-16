<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Out내장객체는 JSP페이지에서 생성되는 내용을 전달받는 객체이다.</h3>
	<%
		String str = "OutObject.jsp";
		
		int sizeBuffer=out.getBufferSize();
		int size= out.getRemaining();
	%>
	출력할 값 : <%= str %><br>
	버퍼의 크기 : <%= sizeBuffer %><br>
	현재버퍼의 크기 : <%= size %><br>
	
	<%
		out.clear(); 
	%>
	현재의 출력할 값 : <%= str %>
</body>
</html>