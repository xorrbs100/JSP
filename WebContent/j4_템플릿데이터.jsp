<!-- 
   학습내용
      1. 동적 웹 콘텐츠를 위한 기술과 구성방법
      2. JSP기술의 정의와 기본개념, 장점등 이해
      3. JSP문서의 기본구조
      4. JSP페이지의 구성요소 및 스크립트요소 이해
      
   JSP(Java Server Pages)
      - 동적으로 콘텐츠를 생성하기 위해 프로그래밍 코드가 담긴 스크립트를 포함
      - HTML 태그 및 JSTL,EL등을 포함하여 어려운 자바코딩없이 자바 객체를 사용할수 있게 한다.
   
   JSP가 제공하는 기술
      - 웹 브라우저를 통한 요청에 대한 응답을 생성해 내는 텍스트기반의 명세수단제공
      
      1) 템플릿 데이터 : 텍스트 혹은XML, HTML태그로 구성된 콘텐츠
      2) 동적인 데이터 : 상황에 따라서 달라지는 요청의 내용을 스크립트 같은 프로그램적 요소를 추가할 수있다.
      
      			. 동적데이터를 어떻게 구현하냐?
      				(%.......  %)태그를 스크립틀릿(scriptlet) 이라고 한다.      
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
	<h3>jsp의 제공기술 -1) 템플릿 데이터</h3>
	<hr>
	<p>본 예제는 JSP페이지지만 동적인 데이터를 위한 프로그램적 요소는 없다.</p>
	<p>상황에 따라 가공되어져야 하는 데이터가 없는 정적 데이터만 표현했다.</p>
	
	
	
</body>
</html>