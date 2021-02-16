<!-- 
	- 아이디, 비밀번호를 입력받는다. ->로그인 -> submit - >login.jsp(가입된 회원인지 체크) -> 회원정보 창을 띄워준다.
	- 신규회원가입 - > register_form.jsp - >  
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
	<form action="login.jsp" method="post" enctype="utf-8">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="text" name="pw"><br>
	<input type="submit"  value="login"><br>
	</form>
	<a href="register_form.jsp">신규회원가입</a>
</body>
</html>