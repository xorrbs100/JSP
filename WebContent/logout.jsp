
<!-- 
	로그아웃 처리(세션) -- > index.jsp(로그아웃된 처음화면)
		
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("ID");
		if(id!=null){
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>