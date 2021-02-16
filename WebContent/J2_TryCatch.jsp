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
		int result=0;

		
		try{
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
			result=num1/num2;		
		}catch(NumberFormatException e1){
			out.print("그게 숫자냐?");
		}catch(ArithmeticException e2){
			out.print("연산도 못하냐?");
		}catch(Exception e3){
			out.print(e3.getMessage());
			out.close();
		}
	%>
	나눗셈의 결과 : <%= result %>
</body>
</html>