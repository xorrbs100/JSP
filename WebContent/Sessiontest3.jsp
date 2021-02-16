<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%session.invalidate(); %>
	<h3>
		세션이 삭제되었습니다.<br>
		
	</h3>
	<a href="Sessiontest2.jsp">세션 삭제확인</a>
</body>
</html>