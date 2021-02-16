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
		int data = 20;
	%>
	호출하는 페이지의 값: <%= data %><br>
	<!-- include지시어1의 페이지의 코드를 통으로 가져와서 처리 -->
	<%-- <%@ include file="include지시어1.jsp" %> --%>		<!-- 실행 -->
	
	<!-- include지시어1의 페이지를 실행뒤 값을 가져옴 -->
	<jsp:include page="include지시어1.jsp"></jsp:include>		<!-- 에러 -->
	포함되는 페이지의 값: <%= data %> 
</body>
</html>