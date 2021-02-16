<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie=new Cookie("name","web");	// 같은 이름에 다른값을 설정하면 변경된다.
		response.addCookie(cookie);		
	%>
	<a href="getCookie.jsp">쿠키 확인하기</a>
</body>
</html>