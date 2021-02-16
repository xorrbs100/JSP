<!-- 
	신규회원 가입처리
		- Member_info에 들어가는 회원가입정보를 입력받는 창
	-- > 입력처리 register.jsp로 이동	
	
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
	<h2>신규회원가입</h2>
	<form action="register.jsp" method="post" enctype="utf-8">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="text" name="pw"><br>
		이름 : <input type="text" name="name"><br>
		전화번호 : <input type="text" name="phone"><br>
		이메일 : <input type="text" name="email"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>