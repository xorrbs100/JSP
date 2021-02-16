<!-- 
	Scope(영역)
		; 목적 : 데이터를 같이 사용하기 위함이다.
		
		1) page : 한개 jsp페이지 - page영역내에서 데이터를 공유
		2) request : 한개 http요청이 처리되는 영역 - request 내에서 데이터를 공유
				-- > 요청 --- > jsp -- > jsp -- > -- > (한개생성)
		3) session : 한개 웹브라우저 영역	- 브라우저 단위로 데이터를 공유 - 로그인 정보유지
				브라우저1 -----			<session1>
							ㅣ
						웹컨테이너
							ㅣ
				브라우저2 -----			<session2>	
		4) application : 같은 웹어플리케이션(같은 웹 컨테이너) - 설정정보, 웹어플리케이션내 활용될 데이터
	
	scope관련 객체
		. page			--	pageContext
		. request		--	request
		. session		--	session
		. application	--	application
		
	객체가 갖는 메소드
		. setAttribute(name, value)
		. getAttribute(name)
		. removeAttribute(name)
		. getAttributeNames()	-- Enumeration
		- 속성형태 : 속성이름 : 값
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
	<h2>page 영역에서 데이터공유</h2>
	<%
		String name= request.getParameter("name");
		String value = request.getParameter("value");
		if(name!=null&&value!=null){
			pageContext.setAttribute(name, value);	//page scope 속성설정
		}
	%>
	속성이름 : <%= name %><br>
	속성값 : <%= pageContext.getAttribute(name) %>		<!-- 읽어오기 -->
	
</body>
</html>