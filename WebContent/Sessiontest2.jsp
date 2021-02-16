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
		session.setMaxInactiveInterval(60*60*3);
	%>
		세션id = <%=session.getAttribute("ID") %><br>
	
</body>
</html>