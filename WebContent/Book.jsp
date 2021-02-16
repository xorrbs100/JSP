<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="book" class="board.Book" scope="request"/>
	<jsp:setProperty property="*" name="book"/>
	<h2>책 속성</h2>
	<%-- <jsp:forward page="boardResult.jsp"></jsp:forward> --%>
	제목 : <jsp:getProperty property="title" name="book"/>
	저자 : <jsp:getProperty property="at" name="book"/>
	출판사 : <jsp:getProperty property="pub" name="book"/>
	가격 :  <jsp:getProperty property="price" name="book"/>
	
</body>
</html>