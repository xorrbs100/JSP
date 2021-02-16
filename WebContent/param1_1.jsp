<!-- 
	Param태그
		. include, forward 태그와 함께 사용할 수 있다.
		. name, value 쌍으로 넘겨주는 역할을 한다.
		. 한글깨짐방지 처리
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
	<h3>여기는 호출하는 페이지입니다.</h3>
	<p>파라미터 값을 가지고 가서, 해당 페이지를 실행한 후 결과물을 가지고 돌아오겠습니다.
	<hr>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:include page="param1_2.jsp" flush="false">
		<jsp:param value="홍길동" name="name"/>
		<jsp:param value="010-1111-2222" name="phone"/>
	</jsp:include>
	<hr>
	<p>다녀와서 위에 출력했습니다.
	
</body>
</html>