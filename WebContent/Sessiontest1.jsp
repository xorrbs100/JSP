<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		session.setAttribute("ID", "test");
		
		Date c_date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		c_date.setTime(session.getCreationTime());
	%>
	<a href="Sessiontest2.jsp">세션ID 확인</a>
	생성시간 : <%=formatter.format(c_date) %>

</body>
</html>