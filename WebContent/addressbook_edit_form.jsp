<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
    <%@ page import="jspbook.addressbook.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록수정</title>
<script type="text/javascript">
	function deletechk() {
		result=confirm("정말로 삭제하시겠습니가?");
		if(result){
			document.frm1.action.value="delete";
			document.frm1.submit();
		}
	}
</script>
<link rel="stylesheet" type="text/css" href="addressbook.css" media="screen">
</head>
<body>
	<jsp:useBean id="ab" class="jspbook.addressbook.AddressBook" scope="request"></jsp:useBean>
	<div align="center">
	<h2>주소록 수정화면</h2>
	<hr>
	[<a href="addressbook_list.jsp">주소록 목록가기</a>]
		<form action="addressbook_control.jsp" name="frm1" method="get">
			<input type="hidden" name="id" value="<%=ab.getId()%>">
			<input type="hidden" name="action" value="update">
			<table border="1">
				<tr>
					<th>이름<td><input type="text" name="name" value="<%= ab.getName()%>">
				<tr>
					<th>email<td><input type="text" name="email" value="<%=ab.getEmail()%>">
				<tr>
					<th>전화번호<td><input type="text" name="tel" value="<%=ab.getTel()%>">
				<tr>
					<th>생일<td><input type="date" name="birth" value="<%=ab.getBirth() %>">
				<tr>
					<th>회사<td><input type="text" name="comdept" value="<%=ab.getComdept() %>">
				<tr>
					<th>메모<td><input type="text" name="memo" value="<%=ab.getMemo() %>">
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="저장">
						<input type="reset" value="취소">
						<input type="button" value="삭제" onclick="deletechk()">
			</table>
		</form>		
	</div>
</body>
</html>

