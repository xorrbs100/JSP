<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>서적정보</h2>
	코드 : <%= request.getAttribute("CODE")%><br>
	제목 : <%= request.getAttribute("TITLE")%><br>
	저자 : <%= request.getAttribute("WRITER")%><br>
	가격 : <%= request.getAttribute("PRICE")%><br><hr>
	
	
	<h2>서적정보</h2>
	<form action="UpdateToDB.jsp">
	코드 :<input type="text"name="code" value="${CODE}"> <br>
	제목 : <input type="text" name="title" value=${TITLE }><br>
	저자 : <input type="text" name="writer" value=${WRITER }><br>
	가격 : <input type="text" name="price" value=${PRICE }><br><br>
	<input type="submit" value="수정">
	<input type="reset" value="취소">	
	</form>
</body>
</html>