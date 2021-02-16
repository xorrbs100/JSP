<!-- 
	- 기존회원이라면 ..
		. 회원가입이 성공했다면 
			- "회원가입에 성공하였습니다" - > index.jsp
		. 실패했다면
			- "회원가입에 실패하였습니다" - > index.jsp
		
	- 아니라면 .. 
		. "이미 가입된 아이디입니다. 다시 작성해 주세요" - > register_form.jsp
		
 -->

<%@page import="member.Memberinfo"%>
<%@page import="member.DataManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="member.Memberinfo" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="member"/>
	<jsp:useBean id="data" class="member.DataManagerDAO" scope="page"></jsp:useBean>
	<%
	/* 	Memberinfo member = new Memberinfo(); */
	/* DataManagerDAO dao = new DataManagerDAO(); */
		if(! data.isMember(member.getId(), member.getPass())){
			if(data.insertMember(member)!=0){
				out.print("<h3>회원 가입에 성공하셨습니다.</h3>");
				out.print("<a href='index.jsp'>로그인 화면으로 이동</a>");
			}else{
				out.print("<h3>회원가입에 실패하셨습니다. 다시 시도해주세요</h3>");
				out.print("<a href='register_form.jsp'>회원가입 화면으로 이동</a>");
			}
		}else{
			out.print("<h3>이미 가입된 아이디 입니다. 다시 작성해 주세요</h3>");
			out.print("<a href='register_form.jsp'>회원가입 화면으로 이동</a>");
		}	
	%>
</body>
</html>