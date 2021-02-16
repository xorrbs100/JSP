<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("user_id");
		String pw=request.getParameter("user_pw");
	%>
	<%
	if(id.length()!=0&&id!=null){
		if(id.equals("관리자")&&pw.equals("xorrbs")){
			out.print("관리자모드로 로그인 되었습니다.");
		}
		else{
			out.print("<h3>"+id+"님 환영합니다.</h3>");
		}
	}
	else{
		out.print("아이디와 비밀번호를 입력해 주세요");
	}
	%>
</body>
</html>