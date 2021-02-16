<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>application 영역내에서 데이터 공유</h2>
	<table border="1">
		<tr>
			<th>속성이름
			<th>속성값
			<%
				Enumeration e = application.getAttributeNames();
							//application 객체의 속성이름과 값들을 출력
				while(e.hasMoreElements()){
					String name = (String)e.nextElement();
					Object value = application.getAttribute(name);
					out.print("<tr><td>"+name+"</td></tr>"+value+"</td>");
					application.getAttribute(name);
				}
			%>
		</tr>
	</table>
</body>
</html>