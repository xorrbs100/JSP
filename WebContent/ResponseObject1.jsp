<!-- 
	Response 객체
		; 웹 브라우저에게 보내는 응답에 대한 정보를 저장하는 객체
		
		. addCookie(Cookie cookie) : 쿠키 데잍터 설정
		. addHeader(String name, String value): 응답시 응답헤서 내용설정
		. containsHeader(String name): name의 헤더값이 있는지 확인
		. sendError(int status_code) : 에러응답을 클라이언트로 전송
		. sendRedirect(String location) : 현재 페이지를 다른 페이지로 이동
		. sendStatus(int status_code) : HTTP응답상태 코드설정
		. sendBufferSize(int size) : 출력버퍼크기 설정
		. setContentType(String type): 응답할 내용의 MIME타입 설정
		. setHeader(String name, String value): 지정된 이름과 값으로 응답헤더 설정
		. flushBuffer() : 버퍼의 내용을 클라이언트로 전송
		. getBufferSize() : 출력버퍼크기를 리턴
		. encodeURL(String url) : 세션ID와 URL을 합해 전송코드로 전환
		. encodeRedirectURL(String url) : sendRedirect에 세션 ID를 넘길때 사용
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
	<a href="http://www.naver.com">네이버</a><br>
	<%
		out.print(response.getBufferSize());		//출력버퍼크기 출력
		response.setContentType("text/html; charset=utf-8");
	%>
	
</body>
</html>