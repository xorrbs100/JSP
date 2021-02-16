<!-- 
	쿠키의 도메인
		- 도메인을 설정하지 않은 쿠키는
		- 특정사이트에서 생성된 쿠키는 다른 사이트에 연결될 경우에는 전송되지 않고, 특정한 사이트 접속시에만 적용된다.
		
		- 구현
			. setDomain()활용
				: 설정해놓으면, 같은 도메인을 사용하는 모든 사이트에 접속할 때 해당 쿠키가 모두 전송된다.
				예)
					setDomain()으로 '.sun.com'으로 설정해 놓으면,
					http://java.sun.com, http://jsp.sun.com 등과 같이
					'.sun.com'으로 끝나는 모든 사이트에 해당 쿠키를 전송하게 된다.
					 
		- 주의할점
			: 현재 접속중인 서버의 도메인에 대해서만 도메인 설정이 가능하다.
				예) java.sun.com에 접속중이라면 , setDomain().sun.com 밖에 없다.
				
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
		Cookie cookie1 = new Cookie("name","java");
		response.addCookie(cookie1);	//도메인 없는 쿠키		
		//도메인 설정
		Cookie cookie2 = new Cookie("phone","010-1111-2222");
		cookie2.setDomain("java.sun.com");	//쿠키에 도메인 설정
		response.addCookie(cookie2);
			//도메인이 설정되어 있는 곳으로만 쿠키가 전송된다.
		
		
	%>
</body>
	<h2>쿠키 생성결과 확인</h2>
	<%=cookie1.getName() %> : <%=cookie1.getValue() %><br>
	<%= cookie2.getName() %> :  <%= cookie2.getValue() %>
	
	<a href="getCookie.jsp">쿠키 확인하기</a>
</html>