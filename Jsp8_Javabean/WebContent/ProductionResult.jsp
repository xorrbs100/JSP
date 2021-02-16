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
	
	<h2>상품재고현황</h2>
	<hr>
	상품코드: <jsp:getProperty property="code" name="product"/><br>
	상품명: <jsp:getProperty property="name" name="product"/><br>
	상품가격: <jsp:getProperty property="cost" name="product"/><br>
	상품수량: <jsp:getProperty property="count" name="product"/><br>
</body>
</html>