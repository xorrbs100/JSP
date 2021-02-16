<%@page import="java.util.ArrayList"%>
<%@page import="jspbook.addressbook.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
<link rel="stylesheet" type="text/css" href="addressbook.css" media="screen">
<script type="text/javascript">
	function check(ab_id) {
		pwd=prompt("수정/삭제 하려면 비밀번호를 입력해 주세요.");
		document.location.href="addressbook_control.jsp?action=edit&id="+ab_id+"&upasswd="+pwd;
		
	}
</script>
</head>
<body>
	<jsp:useBean id="ab" class="jspbook.addressbook.AddressBean" scope="request"></jsp:useBean>
	<div align="center">
		<h2>주소록 목록화면</h2>
		<hr>
		<form action="">
		[<a href="addressbook_form.jsp">주소록 등록하기</a>]
		<table border="1">
			<tr bgcolor="#99ccff">
				<th>번호<th>이름<th>전화번호<th>생일<th>회사<th>메모
			</tr>
			<%
			for (int i=0;i<ab.getDBList().size();i++){
			%>
			<tr>
				<td><a href="javascript:check(<%=ab.getDBList().get(i).getId()%>)"><%=ab.getDBList().get(i).getId() %></a>
				<td><%=ab.getDBList().get(i).getName() %><td><%=ab.getDBList().get(i).getTel() %>
				<td><%=ab.getDBList().get(i).getBirth() %><td><%=ab.getDBList().get(i).getComdept() %>
				<td><%=ab.getDBList().get(i).getMemo() %>
			</tr>	
			<%
				}
			%>
				
		</table>
		</form>
	</div>
</body>
</html>