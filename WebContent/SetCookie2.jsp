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
		Cookie cookie = new Cookie("name","jsp");
		
		response.addCookie(cookie);	
		// response객체를 이용해서 요청헤더를 통해 전송한다.
		// 쿠키에 들어있는 정보는 서로 다른 페이지에서도 공유할 수 있다.	
	%>
	<a href="getCookie.jsp">쿠키 확인하기</a>
	
	
</body>
</html>