<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bo" class="board.BoardInfo" scope="request"/>
	<h2>개인정보</h2>
	제목 : <jsp:getProperty property="title" name="bo"/>
	이름 : <jsp:getProperty property="name" name="bo"/>
	내용 : <jsp:getProperty property="content" name="bo"/>
</body>
</html>