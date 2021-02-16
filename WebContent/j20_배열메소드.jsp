<!-- 입력받은 정수의 약수를 정수배열로 리턴하는 메소드 구현 -->
<%@page import="java.util.ArrayList"%>
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
		public int[] ex(int num){
			
		int ctn=0;
			for(int i=1 ;i<=num;i++){
			if((num%i)==0){
				ctn++;	
			}
		}
		int arr[]=new int [ctn];
		int j=0;
		for(int i=1;i<=num;i++){
			if(num%i==0){
				arr[j]=i;
				j++;
			}
			
		}
		return arr;
	}
	%>
	
	<%
		int arr100[] = ex(100);
		out.print("100의 약수+<br>");
		for(int i=0;i<arr100.length;i++){
			out.print(arr100[i]+"<br>");
		}
		out.print("<hr>");
		out.print("200의 약수+<br>");
		int arr200[] = ex(200);
		for(int i=0;i<arr200.length;i++){
			out.print(arr200[i]+"<br>");
		}
		
	%>
</body>
</html>