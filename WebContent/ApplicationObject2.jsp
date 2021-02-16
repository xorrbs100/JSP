<!-- 
	application 객체중 web.xml에 설정된 정보를 읽어오기
	
	web.xml
		- 웹 어플리케이션에 포함된 모든 JSP페이지에서 사용될 수 있는 각종 설정정보 저장해놓고 활용
		- web.xml에 있는 정보 읽어오는 메소드
			. getInitParameter(String name) : name의 값을 읽어온다(없으면null)
			. getInitParameterNames() : name목록을 가져온다 (Enumeration타입)
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

</body>
</html>