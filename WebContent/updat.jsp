<!-- 
	. id가 있다면,
		- 업데이트처리가 성공했다면
			. "회원정보수정에 성공하셨습니다"
			. - > 회원정보보기 -> member_info.jsp
		- 실패했다면
			. "회원정보에 실패하였습니다"
			. - > 로그인 화면으로 돌아가기 - > login.jsp
	. 없다면
		- index.jsp
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" session="true"%>
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
		String id = (String)session.getAttribute("ID");
		if(id!=null){
			if(data.updateMember(member)!=0){
				out.print("<h3>회원정보 수정에 성공하였습니다.</h3>");
				out.print("<h3><a href='member_info.jsp'>회원정보 보기화면으로 돌아가기</a></h3>");
			}else{
				out.print("회원정보 업데이트에 실패했습니다. 잠시후 다시 시도해주세요.");
				out.print("<h3><a href='login.jsp'>로그인 화면으로 돌아가기</a></h3>");
			}
		}else{
			response.sendRedirect("index.jsp");
		}
		
	
	%>
</body>
</html>