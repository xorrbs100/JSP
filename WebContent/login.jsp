<!-- 
	- 입력창의 파라미터 값을 받아서 등록된 회원인지 체크
		 - > 등록된회원 : 세션생성(아이디) - > 회원정보창(member_info.jsp)
		 - > 미등록회원 : "등록된 회원이 아닙니다" 출력
		 
	- 신규회원등록을 하시겠습니까? - > index.jsp
		 
	
 -->
<%@page import="member.DataManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" session="true"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<jsp:useBean id="data" class=member.DataManagerDAO scope="session"></jsp:useBean> --%>
	  
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		DataManagerDAO dao = new DataManagerDAO();
		if(dao.isMember(id, pw)){
			session.setAttribute("ID",id);
			response.sendRedirect("member_info.jsp");		//멤버인포로 값보냄
		
		}else{
			out.print("<h3>등록된 회원이 아닙니다</h3>");
		}
	%>
	<a href="index.jsp">신규회원가입</a>
</body>
</html>