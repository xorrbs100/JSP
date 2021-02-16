<!-- 
	<jsp : include page="불러올페이지" flush="true/false">
			. true : 실행시키기전에 출력버퍼에 저장된 내용을 클라이언트에 전송하고 실행
					- 비운다는 것은 클라이언트에게 HTTP헤더 정보도 함께 전달 되는데 비운후에는 헤더정보가 추가해도 반영되지 않는다.
			. false : 출력버퍼의 내용을 그대로 두고 실행결과가 페이지에 포함된다.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include태그학습</title>
</head>
<body>
	<h2>여기는 include1_2페이지를 호출하는 home 페이지 입니다.</h2>
	<hr>
	
	<jsp:include page="include1_2.jsp" flush="false"/>
	
	<hr>
	<h2>호출해서 해당 페이지의 실행결과를 가지고 다녀왔습니다</h2>
</body>
</html>