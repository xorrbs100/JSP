<!-- 
	액션태그(Action Tag)
		; jsp페이지에서 특별한 기능을 제공한다.
		; (jsp: 태그이름)
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>특정한 페이지를 현재의 위치에 포함시켜보자</title>
</head>
<body>
	
	<h3>액션태그를 활용해서 특정페이지를 지정한 위치에 포함시켜보자</h3>
	<p>여기 아래에 특정 페이지를 삽입해 봅시다
	<hr>
		<jsp:include page="j7_이번주로또번호.jsp"></jsp:include>
	<hr>
	<p>여기는 다시 현재의 jsp페이지 입니다.
</body>
</html>