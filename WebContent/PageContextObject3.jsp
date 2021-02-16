<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<h3>PageContext 객체에서 제공하는 forward()메소드 활용</h3>

	<%
		pageContext.forward("OutObject.jsp");	//액션태그가 아니라 메소드로 처리할수도 있다.
		
	%>
	<%-- <jsp:forward page="OutObject.jsp"></jsp:forward> --%>
</body>
</html>