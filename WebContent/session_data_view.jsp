<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		NAME :
		<%=session.getAttribute("NAME") %><br> ADDRESS :
		<%= session.getAttribute("ADDRESS") %>
	</h3>
</body>
</html>