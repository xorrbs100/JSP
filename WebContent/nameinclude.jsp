<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	대박이야<hr>
	<%
		request.setCharacterEncoding("utf-8");
		
	%>
	<jsp:include page="nameResult.jsp">
		<jsp:param value="이순신" name="name"/>
		<jsp:param value="왕대박" name="status"/>
	</jsp:include>
	<hr>
	쪽박이야
</body>
</html>