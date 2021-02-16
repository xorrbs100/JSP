<!-- 
	표현식(expression)
		. 스크립트릿을 사용하지 않고
			. 변수나 수식의 값을 JSP페이지 실행결과에 포함시키고자 할때 사용
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식사용</title>
</head>
<body>
	<%
		String str= "표현식을 사용합니다.";
		int a = 10, b=20;
		
	%>
	<h2><%= str %></h2>
	<h3><%= a  %>더하기<%=b %>는 <%=a+b %>입니다.</h3>
	<h3>1부터 5까지의 합은 <%=1+2+3+4+5 %>입니다.</h3>
</body>
</html>