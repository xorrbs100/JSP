<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<H2>회원가입정보</H2>
	회원으로 가입되었습니다. 환영합니다
	<hr>
	이름 : <%= request.getAttribute("NAME")%><br>
	아이디 : <%= request.getAttribute("ID")%><br>
	비밀번호 : <%= request.getAttribute("PASS")%><br>
	이름 : ${NAME}<br>
	아이디 : ${ID }<br>
	비밀번호 : ${ PASS}<br>
	
</body>
</html>