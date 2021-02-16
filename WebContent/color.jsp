<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%
		request.setCharacterEncoding("utf-8");
		String color = request.getParameter("color");
		
	%>
<body style="background-color: <%=color %>">

</body>
</html>