<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
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
		GregorianCalendar gc = new GregorianCalendar();
		String date = String.format("%TF %TF",gc,gc);
		Date dd = gc.getTime();
		
	%>
	오늘 : <%=date %><p>
	<%=dd %>
</body>
</html>