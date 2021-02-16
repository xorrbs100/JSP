<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	HttpSession httpSession = request.getSession();
	// 세션객체를 리턴해주는데,
	// getSession(false) : 없으면 null
	// getSession(true) : 없으면 생성해서라도 반환
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		세션 아이디1 : <%= session.getId() %>   웹컨테이너가 자동생성 시킨세션아이디<br>
		세션 아이디2 : <%= httpSession.getId() %> 명시적으로 request 내장객체의 getSession메소드로 생성한 것<br> 
		
	</h3>
</body>
</html>