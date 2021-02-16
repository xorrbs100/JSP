<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>오늘의 메뉴</h2>
		- 짜장<p>
		- 짬뽕<p>
		- 우동<p>
		
		<%@include file="MenuToday.jsp" %> <!-- form태그의 action 대신 include 지시어로씀 -->
</body>
</html>