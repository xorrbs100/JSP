<!-- 
	.MIME : Multypurpose Inteernet Mail Extentions의 약자
			
			- 텍스트, 이미지, 동영상, 사운드등 여러가지 형태의 인터넷
				환경에서 송수신 할때 적용되는 일종의 통신규약
			- 웹서버가 데이터를 전송할때 1. 데이터타입 2. 데이터순으로 전송되는대 이때 데이터타입에 관한 표준을 MIME이라고 한다.
			
			- contentType의 MIME유형
				. 'text/html'	'text/xml'	'text/plain'
				. 미지정하면 기본이 'text/html'
			- charset : jsp가 생성하는 문서에 사용될 문자 인코딩 방법
				.utf-8 지정, 미지정시 iso-8859-1이 지정된다
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
	<h3>charset을 지정하지 않으면 한글이 깨집니다.</h3>
</body>
</html>