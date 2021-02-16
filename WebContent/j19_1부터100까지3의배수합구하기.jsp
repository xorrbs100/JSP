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
		int sum=0;
		for(int i=3; i<100;i++){
			
			if(i%3==0){
				sum+=i;
			}
			
		}
	out.print("1~100까지 수 중 3의 배수의 합은 "+sum);
	%>
</body>
</html>