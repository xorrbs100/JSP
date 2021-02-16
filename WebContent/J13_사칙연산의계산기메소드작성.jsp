<!-- 사칙연산  double 타입 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		int sum;
		public int sum(int a, int b){
		sum = a+b;
		return sum;
	}
	%>
	<%!
		int min;
		public int min(int a, int b){
		min=a-b ;
		return min;
	}
	%>
	<%!
		int mul;
		public int mul(int a, int b){
		mul = a*b;
		return mul;
	}
	%>
	<%!
		int div;
		public int div(int a, int b){
		div = a/b;
		return div;
	}
	%>
	
	3+4=<%=sum(3,4) %><br>
	3-4=<%=min(3,4) %><br>
	3*4=<%=mul(3,4) %><br>
	3/4=<%=div(3,4) %><br>
</body>
</html>