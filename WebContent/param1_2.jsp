<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 페이지는 호출을 당한 페이지 입니다.</h3>
	<p>여기에서 파라미터값을 받아 이 페이지를 실행한 결과값을 호출한 곳으로 보냅니다.
	
	이름 : <%= request.getParameter("name") %>
	전화 : <%= request.getParameter("phone") %>
</body>
</html>