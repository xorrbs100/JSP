<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="SelectBookDb.jsp">
		<h2>데이터가 수정 되었습니다.</h2>
		수정된 내용을 확인하려면 아래를 클릭해주세요<br><br>

		<a href=SelectBookDb.jsp?code=${param.code}>상품조회</a>
		
	</form>
</body>
</html>