<!-- 
	RequestDispatcher란
		; 클라이언트로 부터 최초에 들어온 요청을 서블릿내에서 원하는 곳으로 요청을
			넘겨주는 역할을 수행하거나, 특정자원에 처리를 요청하고 처리결과를 얻어오는 기능을
			수행하는 클래스
				- forward(처리요청), include(결과포함)
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String code = request.getParameter("code");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/joen_chema","root","mysql");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from bookinfo where code='"+code+"';");
		
		while(rs.next()){
			String title = rs.getString("title");
			String writer=rs.getString("writer");
			String price = rs.getString("price");
			request.setAttribute("CODE", code);
			request.setAttribute("TITLE", title);
			request.setAttribute("WRITER", writer);
			request.setAttribute("PRICE", price);
			
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("SelectBookInfoViewer.jsp");
		dispatcher.forward(request, response);
		conn.close();
		stmt.close();
		
	%>
</body>
</html>