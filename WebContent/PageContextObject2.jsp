<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info=" 여기가 보이나요? page 지시어 속에 입력되어 있습니다."  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= getServletInfo() %>
		<!-- print로 설명이 필요한 내용들을 출력할수도 있지만...
		다른 방법으로 page지시어 속에 info=""처리해 놓고, getServletINfo()로 출력되게 할수있다. -->
</body>
</html>