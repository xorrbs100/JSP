<!-- 
	세션삭제
		. invalidate()
		. 더이상 사용할 필요가 없을때는 서버에 저장된 세션의 정보를 삭제해야 한다.
		. 세션과 함께 저장되어 있는 속성정보가 삭제된다.
		. 브라우저가 종료되면 세션도 삭제된다.
		
		. 삭제방법 
			1) invalidate()
			2) 유효시간을 설정해서 자동으로 삭제되도록 설정

 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		세션이 삭제되었습니다.<br>
		<br> <a href="session_data_view.jsp">여기 </a> 클릭하면 삭제확인 가능
	</h3>
</body>
</html>