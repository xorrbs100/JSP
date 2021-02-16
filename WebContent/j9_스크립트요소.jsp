<!-- 
	파일명 : 스크립트요소
	
	JSP구성요소
		1. 스크립트요소	: 스크립트릿, 표현식, 선언
		2. 지시어		: 일종의 메시지, JSP페이지에 대한 정보설정
		3. 내장객체	: JSP에 많이 사용되는 웹프로그래밍기능을 미리 구현해놓고 객체형태로 제공
						-request	: 요청의 파라미터 읽어오기
						-response	: 응답결과 전송하기
						-session	: 세션 처리하기
						-application: 웹 어플리케이션 정보읽기
						-page등등		
					* 내장객체는 객체형태로 제공된다. 별도의 선언이나 초기화없이 바로 사용가능.
		4. 액션태그	: XML의 태그형태, JSP 페이지에 특별한 기능을 제공
					(jsp:태그이름) - 형태, 태그의 종류에 따라 서로 다른 속성과 값을 갖는다.				
		5. 표현언어(EL)
					- JSP 페이지 내부에서 사용되는 간단한 스크립트 언어
					- 내장객체, JSTL과 함께 사용할 수 있는 태그기반의 새로운 언어
					
		6. 사용자정의언어(JSTL)
					- JSP에서 제공되는 태그외에 사용자가 직접 정의하여 사용할 수 있는 태그
					- JSP를 확장시켜주는 역할
					- 이중에서 자주 사용하는 것들을 모아서 표준화한 태그가 JSTL
					
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트요소</title>
<style type="text/css">
	span,table {
		background: yellow;
}

</style>
</head>
<body>
	<h3>스크립트릿&lt;%.....&gt;</h3><br>
	<%
		String a = "Hello JSP~~";
		out.print("<span>"+a+"</span>");
		
	%>
	<hr>
	<h3>표현식 : 변수의값 , 수식의 값을 JSP페이지에 삽입할 때 사용하는 식</h3><br>
	<p>변수 a의 값을 JSP페이지의 곳곳에 사용해 보자</p>
	<p>오늘은 처음으로 SJP를 학습하며, <span><%= a %></span>라고 인사를 했습니다.</p>
	<table>
		<tr><td><%=a %></td></tr>
	</table>
	
	<h3>선언 : JSP페이지에 삽입되는 자바 메서드 선언문, &lt;%!...%&gt;</h3>
	<p>메서드를 선언해 보자</p>
	<%!
		public int add(int a, int b){
			int sum = a+b;
			return sum;
		}
	%>
	메서드의 결과값은 3+8=<span><%=add(3,8) %></span>입니다.
	<hr>
</body>
</html>