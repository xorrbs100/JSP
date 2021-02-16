<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jsp가 제공하는 기술 - 2) 동적데이터</h3>
	<br>
	<ul>
		<li>스크립트릿은 <strong>웹컨테이너(웹서버)</strong>에 의해 실행되고 
		<li>실행된 결과는 스크립트릿이 <strong>포함된 위치</strong>에 저장되며
		<li><u>HTMl 태그</u>와 함께 클라이언트에게 전송된다.
	</ul>
	<%
		for(int i=6; i>=1; i--){
			String str="<h"+i+">Welcome JSP! </h"+i+">";
			out.print(str);	//출력문
		}
	%>
	
	<p>출력되는 위치가 스크립트릿의 위치와 맞나요?</p>
	
	<p> &lt;% ......%&gt;, &lt;%= %&gt;, &lt;%! %&gt; 3종류가 있다
</body>
</html>