<!-- 
	forward 태그
		: 현재 JSP페이지에서 다른 페이지로 강제로 이동시킬때 사용
		: 웹 브라우저가 아닌 웹컨테이너 내부적으로 처리됨으로 페이지주소는 바뀌지 않는다.
		
	주의 : page지시어 속어 buffer 처리
		1) none으로 설정하지 마라
		2) 꽉차게 하지 않도록 주의해라.
		
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
	<%
		request.setCharacterEncoding("utf-8");	//한글깨짐방지
		request.setAttribute("name","홍길동");
		request.setAttribute("phone", "010-1111-2222");
	%>
	<h2>여기는 호출하는 페이지입니다.</h2>
	<hr>
	<jsp:forward page="forward1_2.jsp"/>
</body>
</html>