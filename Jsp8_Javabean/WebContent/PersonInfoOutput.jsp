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
	
	<div>
		<h2>개인정보</h2>
		<hr>
		이름 : <jsp:getProperty property="name" name="per"/>
		나이 : <jsp:getProperty property="age" name="per"/>
		성별 : <jsp:getProperty property="gender" name="per"/>
		주소 : <jsp:getProperty property="addr" name="per"/>
	</div>
</body>
</html>