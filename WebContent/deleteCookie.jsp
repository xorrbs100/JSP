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
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null && cookies.length>0){
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("name"));{
					Cookie cookie = new Cookie("name","");	// 값이없는 쿠키생성
					cookie.setMaxAge(0);	// 유효시간을 0으로 해놓는다.
					response.addCookie(cookie);	//쿠키는 삭제메소드가 지원되지 않는다.
				}
				
			}
		}
	%>
</body>
</html>