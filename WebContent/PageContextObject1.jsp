<!-- 
	PageContext 객체
		 - JSP의 내장객체를 가져올수 있게 한다.
		 - 그러므로 다른 내장객체에 접근할 수 있게 해주고
		 - 현재 페이지에서 다른 페이지로 흐름을 제어하는 기능도 해준다.
		 
		 . getPage() : page내장 객체를 가져온다.
		 . getRequest() : request 내장 객체를 가져온다.
		 . getResponse() : response내장 객체를 가져온다.
		 . getOut() : out 내장객체를 가져온다.
		 . getServletConfig() : config 내장객체를 가져온다.
		 . getServletContext(): application내장객체를 가져온다.
		 . getException() : exception 내장 객체를 가져온다.
		 
		 . forward() : forward 액션태그와 같은 기능으로 현재의 페이지에서 다른 페이지로 넘긴다.
		 . include() : include 액션태그와 같은 기능으로 현재 페이지에 다른 페이지를 포함시킨다.
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
	<h3>PageContext객체는 내장객체들을 가져와서 활용하게 해준다.</h3>
	<%
		out.print("out.print()메서드를 이용해서 출력합니다.");
		pageContext.getOut().print("pageContext.getout().print를 통해 출력");
	%>
</body>
</html>