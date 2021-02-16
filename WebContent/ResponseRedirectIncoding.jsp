<%@page import="java.net.URLEncoder"%>
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
		String search = "JSP프로그래밍";
		String url = "http://search.naver.com/search.naver? where=nexearch&query= ";
		String e_search = URLEncoder.encode(search,"utf-8");
		response.sendRedirect(url+e_search);	//URL을 합침
		
	%>
</body>
</html>