<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="product" class="JavaBean.ProductionSetGet" scope="request"/>
	<jsp:setProperty property="*" name="product"/>
	
	<jsp:forward page="ProductionResult.jsp" />
</body>
</html>