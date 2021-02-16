<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	background-image: url("img/엘사.png");
	
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		int dan=Integer.parseInt(request.getParameter("dan"));
		out.print("<h2>"+dan +"단 </h2><hr>");
		
		for(int i=1;i<10;i++){
			out.print(dan+"*"+i+"="+dan*i+"<br>");
		}
	%>
</body>
</html>