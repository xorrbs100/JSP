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
		Cookie cookie=new Cookie("ID","ADMIN");	//쿠키생성 - 호출
		cookie.setMaxAge(0);
		response.addCookie(cookie);	//로그종료시 쿠키를 삭제하도록 처리해준다.
		
	%>
</body>
</html>