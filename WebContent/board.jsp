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
	<jsp:setProperty property="*" name="bo"/>
	
	<jsp:forward page="boardResult.jsp"></jsp:forward>
</body>
</html>