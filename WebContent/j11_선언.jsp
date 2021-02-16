<!-- 
	1. 메서드 선언의 형식 : (%!,,,,,%)
		public 리턴타입 메서드이름(파라미터){
		실행코드;
		}
	2. 선언된 메서드 활용
		1) 표현식으로 호출사용 : (%= 리턴값%)
		2) 스크립트릿 (%~~%)
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트립에서 정의해 놓은 메서들르 호출해서 활용하는 법</h3>
	<%!
		public int sum(int a){
			int s=0, i=1;
			for(i=1; i<=a;i++){
				s+=i;	
			}
		return s;
	}
	%>
	<%
		int s1= sum(100);
		int s2= sum(1000);
		
	%>
	
	1부터 100까지 숫자의 합은<%=s1 %>입니다.<br>
	1부터 1000까지의 숫자의 합은<%= s2 %>입니다. 
</body>
</html>