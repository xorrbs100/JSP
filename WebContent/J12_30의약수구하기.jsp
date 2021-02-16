<!-- 30,200의약수, 개수 구하기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>30의 약수구하기</title>
</head>
<body>
	<%
		int i;
		int ctn=0;
		for(i=1 ;i<=30;i++){
			if((30%i)==0){
				ctn++;
				out.print("30의 약수= "+ i+"<br>");
				
			}
		}
	%>
	30의 약수 갯수 = <%= ctn %>;
	<hr>
	<%
		int i2;
		int ctn2=0;
		for(i2=1 ;i2<=200;i2++){
			if((200%i2)==0){
				ctn2++;
				out.print("200의 약수 ="+ i2 +"<br>");
			}
		}
	%>
	200의 약수 갯수 = <%= ctn2 %>;

</body>
</html>