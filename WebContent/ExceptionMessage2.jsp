<!-- 
	HTTP 응답상태
		. 400 : 잘못된 요청
		. 401 : 인증오류
		. 403 : 사용자 허가모드 오류
		. 404 : 요청한 문서가 존재하지 않음
		. 405 : 요청한 method를 지원하지 않음
		. 500 : 서버에서 실행오류
		. 503 : 일시적으로 요청을 처리할 수 없음
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1 style="color:red">여기는 에러문구를 처리해주는 jsp페이지입니다</h1>
	<%
		out.print("숫자를 0으로 나누었습니다. 0으로 나눔은 불가합니다.");
		out.print("에러메시지 : "+exception.getMessage()+"");
	%>
</body>
</html>