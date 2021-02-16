<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	session.setAttribute("NAME", "Jamse");
	session.setAttribute("ADDRESS", "SEOUL");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		세션 속성이 설정되었습니다<br>
		<br> <a href="session_data_view.jsp">여기 클릭</a> 설정된 속성을 확인할 수
		있습니다.
	</h3>
</body>
</html>