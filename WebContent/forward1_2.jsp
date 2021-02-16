<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>여기는 호출받은 페이지 입니다.</h2>
	<%= request.getAttribute("name") %><br>
	<%= request.getAttribute("phone") %>
</body>
</html>