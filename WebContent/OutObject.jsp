<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer = "1kb" autoFlush="true" %> <!-- 버퍼설정 -->
    
<!-- 
	Out객체
		: JSP 페이지에서 생성되는 내용을 모두 전달받는 객체이다.
		
		. getBufferSize() : 버퍼크기를 가져온다.
		. getRemaining() : 현재 버퍼의 크기를 가져온다.
		. clearBuffer() : 버퍼의 내용을 비워준다.
		. Close() : 버퍼의 내용을 flush한 후 스트림을 닫는다.
		. flush() : 버퍼의 내용을 전송한다.
		. isAutoFlush() : 버퍼가 가득 찼을때 자동으로 플러쉬하고 true 값을 리턴한다.
		* 출력버퍼를 page지시어에 지정해보자.
 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>autoFlush가 false 이면 버퍼가 찼을때 에러를 발생시키고 작업을 중단.</h2>
	<h2>autoFlush가 true 버퍼가 차면 출력시키고 계속작업</h2>
	<%
		for(int i=0;i<100;i++){
			out.print("1234");
		}
	%>
</body>
</html>