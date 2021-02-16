<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ExceptionMessage2.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>exception 객체는 JSP에 관련된 일을 하는 과정에서 발생하는 예외를 처리하기 위한 객체이다.</h3>
	<%
		int result = 10/0;
		out.print("<b>나눈값: "+result+"</b>");
		
	
	%>
</body>
</html>