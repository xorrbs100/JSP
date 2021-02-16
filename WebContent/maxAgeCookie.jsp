<!-- 
	유효시간
		. 생성된 쿠키를 사용할 수 있는 시간을 의미
		. 시간이 경과되면 자동삭제
		. 유효시간이 남아있는 쿠키들은 웹브라우저를 종료하더라도 삭제되지 않고 서버에 남아있는다.
		. 다시 접속하면 사용가능하다.
		. 유효시간을 미지정 했다면, 웹 브라우저가 실행중인 동안만 서버에 남게되고 종료하면 삭제된다.
		
 -->

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
		Cookie cookie = new Cookie("name","JSP");
		cookie.setMaxAge(60*60*24);	//24시간지정
		response.addCookie(cookie);
		
	%>
</body>
</html>