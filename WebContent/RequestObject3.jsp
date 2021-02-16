<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
	. jsp가 서블릿으로 전환되는 것을 학습함에 있어 톰캣서버에 대해 알아야 하므로 
	톰캣의 포트가 몇인지등 내 PC환경알아보기
	
	. ip4방식과 ip6방식
		- ip4: 32비트 -- 00000000:00000000:00000000:00000000 (43억개)
		- ip6: 128비트
		
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request객체 메소드학습과 IP방식처리</h3>
	<% 
		
		String protocol = request.getProtocol();
		String server = request.getServerName();
		int port = request.getServerPort();
		String clientIP = request.getRemoteAddr();
		String clientHost = request.getRemoteHost();
		String methodType = request.getMethod();
		String url1 = new String(request.getRequestURI());
		String url2 = request.getRequestURI();
		String contextPath = request.getContextPath();
		String browser = request.getHeader("User-Agent");
		String mediaType=request.getHeader("Accept");
		
	%> 
	<h2>Request 내장객체의 서버정보 메소드들 학습</h2>
	프로토콜 : <%= protocol %><br>
	접속한 서버명 : <%= server %><br>
	접속한 서버의 포트번호 : <%= port%><br>
	클라이언트의 호스트명 : <%= clientHost %><br>
	현재 페이지의 전송방식 : <%= methodType %><br>
	요청한 현재 페이지의 경로 (URL1):<%= url1 %><br>
	요청한 현재 페이지의 경로(URL2): <%= url2 %><br>
	웹어플리케이션에서의 컨텍스트 경로 : <%= contextPath %><br>
	사용한 웹 브라우저 : <%= browser %><br>
	브라우저가 지원하는 매체 : <%=mediaType %>
	-Djava.net.preferIPv4Stack="true"
</body>
</html>