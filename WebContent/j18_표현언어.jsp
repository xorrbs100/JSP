<!-- 
	표현언어(Expression Language: EL)
		; 내장객체와 함께 사용할 수 있는 태그 기반의 새로운 언어이다.
		; 스크립트 요소 사용없이 프로그램적인 요소를 jsp페이지에 추가할 수 있다.
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트릿과 표현언어를 비교해 보시죠</h3>
	<br>
	
	<p>스크립트릿으로 구현
	3 더하기 4는
	<%
		out.print(3+4);
	%>
	
	<hr>
	<p>EL로 구현</p>
	3더하기 4는 ${ 3+4 }입니다.
</body>
</html>