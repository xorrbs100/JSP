<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	color : white;
	background-color: black;
	font-style: italic;
	
	}
		.blurtxt{text-shadow: 3px 3px 5px yellow;}
</style>
</head>
<body>

	<h3>로또번호6자리</h3>
	<hr>
	<div class='blurtxt'>
	<%
	int arr[]=new int [6];
	for(int i=0;i<6;i++) {
		double num = Math.random()*46;
		arr[i] =(int)(Math.round(num));
		for(int j=0;j<i;j++) {
			if(arr[i]==arr[j]) {
				i--; } 
			}	
	}
	for(int i=0;i<arr.length;i++){
		out.print(arr[i]+"  ");
	}
	%>
	</div>

</body>
</html>