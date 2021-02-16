<!-- 
	1. request객체
		- 내장 객체로서 JSP페이지에서 가장 많이 사용하는 객체
		- 클라이언트가 웹서버에 전송한 요청과 관련된 정보를 제공하는 역할을 수행
		- request 객체를 이용하면 클라이언트의 정보나 전달하는 데ㅔ이터를 읽을 수 있다.
		
	2. 제공하는 기능
		- 클라이언트 관련 정보 읽어오기
		- 서버관련 정보를 읽기
		- 클라이언트가 전송한 데이터 읽기
		- 클라이언트가 전송한 헤더, 쿠키정보 읽기
		- 속성처리기능
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
	<ul>
		<li>클라이언트의 IP주소 :  <%= request.getRemoteAddr() %>
		<li>요청 정보의 길이(모르면 -1) : <%= request.getContentLength() %>
		<li>인코딩 : <%= request.getCharacterEncoding() %>
		<li>문서타입 : <%= request.getContentType() %>
		<li>프로토콜 : <%= request.getProtocol() %>
		<li>전송방식 : <%= request.getMethod() %>
		<li>요청URI : <%= request.getRequestURI() %>
		<li>
		
	</ul>
</body>
</html>