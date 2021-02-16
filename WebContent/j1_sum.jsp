<!-- sum to 100 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 자바코드 -->
	<%
		int total=0;
		for(int i=0; i<=100; i++){
			total = total+i;
		}
	%>
	1+2+3+4+5+...+100=<%=total %>
</body>
</html>