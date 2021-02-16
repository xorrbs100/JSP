<!-- 
	쿠키의 경로 
		- 쿠키는 도메인도 지정할 수 있지만 , 경로도 지정할 수 있다.
		- URL에서 서버주소 이후 부분을 경로라고 한다.
		- setPath()활용 : 현재경로 + 하위경로에 대해서만 쿠키를 전송
	
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
		//경로 미지정- 전체 경로에 접근가능
		Cookie cookie1 = new Cookie("name","java");
		response.addCookie(cookie1);
		
		Cookie cookie2 = new Cookie("phone","010-1111-2222");
		cookie2.setPath("/JSP11_Cookie");	//JSP11_Cookie경로와 하위경로에 접근가능
		
		Cookie cookie3 = new Cookie("address","Seoul");
		cookie3.setPath("/JSP11_Cookie/path2");		//현재경로와 하위경로 접근
		response.addCookie(cookie3);
	%>
</body>
</html>