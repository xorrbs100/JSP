<!-- 구구단메소드 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: darkgray;
	color: white;
	font-size: 20px;
	font-style: italic;
	text-shadow: 3px 3px 5px black;
}

</style>
</head>
<body>
	<%!
		public String gugudan(){
		String str="";
			for(int i=2;i<10;i++){
				str+=i+"단<br>";
				for(int j=1;j<10;j++){
					str+=i+"*"+j+"="+i*j+"<br>";
				}
				str+="<hr>";
			}
		return str;
	}
	%>
	<%= gugudan() %>
</body>
</html>