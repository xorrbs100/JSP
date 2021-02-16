<%@page import="jspbook.addressbook.AddressBook"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<link rel="stylesheet" type="text/css" href="addressbook.css" media="screen">
</head>
<body>
	<div align="center">
		<h2>주소록 작성화면</h2>
		<hr>
		[<a href="addressbook_list.jsp">주소록 목록가기</a>]
		<form action="addressbook_control.jsp" name="frm1" method="post">
			<input type="hidden" name="action" value="insert">
			<table border="1">
				<tr>
					<th>이름<td><input type="text" name="name" maxlength="15">
				<tr>
					<th>email<td><input type="text" name="email" maxlength="50">
				<tr>
					<th>회사<td><input type="text" name="comdept" maxlength="20">
				<tr>
					<th>생일<td><input type="date" name="birth" >
				<tr>
					<th>전화번호<td><input type="text" name="tel" maxlength="20">
				<tr>
					<th>메모<td><input type="text" name="memo">
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="저장">
						<input type="reset" value="취소">
			</table>
		</form>
	</div>
</body>
</html>