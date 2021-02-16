<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert입력창</title>
<style type="text/css">
	table{
		border-collapse: collapse;
		padding: 1px;
		
	}
	input{
		border: none;
		text-align: center;
	}
	input:focus {
		outline: none;
}
	td#btn{
		background: lightgray;
		height: 5px;
		text-align: center;
		box-shadow: 1px 1px gray;
	}
</style>
</head>
<body>
	<h2>회원가입</h2>
	<form action="insert_Statement2.jsp">
		<table border="1">
			<tr><th>아이디<td><input type="text" name="id">
			<tr><th>비밀번호<td><input type="password" name="pass">
			<tr><th>이름<td><input type="text" name="name">
			<tr><th>전화번호<td><input type="text" name="phone">
			<tr><th>주소<td><input type="text" name="address">
			<tr><td id="btn" colspan="2">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</table>
	</form>
</body>
</html>