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
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender =request.getParameter("gender");
		String [] mail = request.getParameterValues("mail");
		String [] hobby=request.getParameterValues("hobby");
	%>
	<h2><%=name %>님 환영합니다.</h2>
	나이 : <%=age %><p>
	성별 : <%=gender %><p>
	수신메일 : <%
		if(mail!=null){
			for(int i=0;i<mail.length;i++){
				if(i==mail.length-1){
					out.print(mail[i]);
				}
				else{
					out.print(mail[i]+",");
				}
			}
		}
	%><p>
	취미 : <%
		if(hobby!=null){
			for(int i=0; i<hobby.length;i++){
				if(i==hobby.length-1){
					out.print(hobby[i]);
				}
				else{
					out.print(hobby[i]+",");
				}
			}
		}
	%>
</body>
</html>