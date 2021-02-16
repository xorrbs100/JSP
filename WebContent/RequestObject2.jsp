<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	내장객체는 별도로 객체의 생성없이 임포트 없이 바로 사용할 수 있는 객체이다.
	
	종류 :	1) 페이지 입출력 객체 : 
				- request	: 클라이언트가 요청한 정보를 저장 (웹브라우저와 서버정보)
				- response	: 서버의 응답정보를 저장
				- out		: 출력스트림
			2) 서블릿 관련 객체 : 
				- page	: 페이지를 구현한 자바클래스 인스턴스
				- config: 페이지 설정정보 저장
			3) 외부환경정보 제공객체 : 
				- pageContext : 페이지 정보저장 (페이지당 하나)
				- application : 웹 어플리케이션 정보저장(웹 어플리케이션)
				- session	  : HTTP 세션정보 저장
			4) 예외처리객체
				- 예외객체, 예외처리시에만 사용한다.
 -->    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>클라이언트가 브라우저를 통해 서버로 요청한 정보를 저장하는 객체</h3>
	<h4>request 객체의 메소드() 종류</h4>
	<hr>
	<h5>getMethod() : 클라이언트가 정보를 요청할때 사용한 방식 - GEt,Post</h5>
	클라이언트가 요청할때 사용한 방식 : <%= request.getMethod() %><br>
	<h5>getContentLength(): 클라이언트각 전송한 요청정보의 길이리턴</h5>
	요청정보길이 : <%= request.getContentLength() %>
	<h5>getContentType() : 클라이언트가 욫청한 정보를 전송할 때 사용한 문서타입리턴</h5>
	요청한 MIME타입 : <%= request.getContentType() %>
	
	<h5>getContextPath(): 페이지가 속한 웹어플리텐션의 콘텐스트 경로리턴</h5>
	웹어플리케이션의 콘텍스트경로 : <%= request.getContextPath() %>
	
	<h5>getRequestURL(): 클라이언트가 요청한 URL에서 경로를 리턴</h5>
	요청한 URL경로 : <%= request.getRequestURL() %>
	
	<h5>getProtocol(): 클라이언트가 요청한 프로토콜 리턴</h5>
	요청한 프로토콜 : <%= request.getProtocol() %>
	
	<h5>getServerName() : 연결할때 사용한 서버명 리턴</h5>
	사용한 서버명 : <%= request.getServerName() %>
	
	<h5>getRemoteAddr(): 클라이언트 컴퓨터의 IP주소 리턴</h5>
	클라이언트 주소 : <%= request.getRemoteAddr() %>
	
	<h5> getServerPort(): 실행중인 포트번호 리턴</h5>
	사용중인 포트번호 : <%= request.getServerPort() %>
	
	
</body>
</html>