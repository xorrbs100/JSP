<!-- 
	Application 객체
		
		- 웹 어플리케이션당 한개의 객체만 생성
		- 현재 웹 어플리케이션이 실행되고 있는 서버와 자원의 정보를 담고 있는 객체이다.
		- 실행되고 있는 서버측의 정보, 실행시 발생한 이벤트들에 대한 로그를 저장하기 위한 기능젲공
		- 이 객체를 통해 객체의 공유도 가능하게 해준다.
		
		. getAttributeNames(): application 객체의 속성명을 가져온다.
		. getMajorVersion() : 컨테이너가 지원하는 Major버전을 가져온다. (서블릿 규약의 버전규칙)
		. getMinorVersion() : 컨테이너가 지원하는 Minor버전을 가져온다.
		. getRealPath(String path): path경로의 실제 경로를 가져온다.
		. getContext(String path) : path 경로자원의 컨텍스트 정보를 가져온다.
		. gtServerInfo() : JSP컨테이너의 이름과 버전을 가져온다.
		. log(String msg) : msg의 내용을 로그파일에 기록해준다.
		. log(String msg, Throwable exception): msg와 예외처리 정보를 로그파일에 기록해준다.
		
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
	<h3>웹어플리케이션이 실행되고 있는 서버와 자원의 정보를 담고 있다.</h3>
	<%= "JSP컨테이너정보 : " + application.getServerInfo()%><br>
	<%= "JSP 컨테이너의 Major버전 : "+ application.getMajorVersion() %><br>
	<%= "JSp컨테이너의 Minor 버전:"+application.getMinorVersion() %><br>
	<%= "어플리케이션 객체의 속성명 : "+  application.getAttributeNames()%>
	
	
</body>
</html>