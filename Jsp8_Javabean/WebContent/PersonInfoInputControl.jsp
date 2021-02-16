<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="per" class="JavaBean.PersonInfoSetGet" scope="request" />
	<jsp:setProperty property="*" name="per"/>
	
	<jsp:forward page="PersonInfoOutput.jsp"></jsp:forward>
</body>
</html>