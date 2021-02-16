<!-- 
	- 등록된 회원의 정보를 보여준다.
	- 1) 수정 -- > updat.jsp
	- 2) 로그아웃 -- > logout.jsp(쿠키,세션 삭제) -- > index.jsp
	- 3) 회원탈퇴 -- > delete.jsp
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="member.Memberinfo" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="data" class="member.DataManagerDAO" scope="page"></jsp:useBean>
	<%
		String id = (String)session.getAttribute("ID");
		
		if(id != null){
			Memberinfo member = data.getMember(id);
			
			out.print("<form action='updat.jsp' method='post'>");
			out.print("<table border='1'>");
			out.print("<tr><th colspan='2'>회원정보");
			out.print("<tr><td>아이디<td><input readonly type='text' name='id' value='"+member.getId()+"'>");
			out.print("<tr><td>비밀번호<td><input type='password' name='pass' value='"+member.getPass()+"'>");
			out.print("<tr><td>이름<td><input type='text' name='name' value='"+member.getName()+"'>");
			out.print("<tr><td>전화번호<td><input type='text' name='phone' value='"+member.getPhone()+"'>");
			out.print("<tr><td>이메일<td><input type='text' name='email' value='"+member.getEmail()+"'>");
			out.print("<tr><td>가입날짜<td>"+member.getReg_date());
			out.print("<tr><td colspan='2'><input type ='submit' value='수정'");
			out.print("</table></form><br>");
			
		}else{
			response.sendRedirect("index.jsp");
		}
	
	%>
	
	<a href="logout.jsp">로그아웃</a><br>
	<a href="delete.jsp ? id="<%=id%>>회원탈퇴</a>
</body>
</html>