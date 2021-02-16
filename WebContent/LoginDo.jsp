<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if(id.equals("admin")&& pw.equals("pw")){
		Cookie cookie = new Cookie("ID","ADMIN");	//쿠키생성
		response.addCookie(cookie);
		
		out.print("<h2>로그인 성공</h2>");
	}
	else{
		out.print("<h2>로그인 실패</h2>");
	}
	%>
</body>
</html>