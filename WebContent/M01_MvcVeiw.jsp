<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>처리한 결과를 보여줍니당</h2>
	<%= request.getAttribute("result") %>
	클라이언트가 볼 화면을 디자인 하면 됨
</body>
</html>