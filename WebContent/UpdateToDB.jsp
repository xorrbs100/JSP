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
		request.setCharacterEncoding("utf-8");
		String code = request.getParameter("code");
		String title= request.getParameter("title");
		String writer = request.getParameter("writer");
		String price =request.getParameter("price");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/joen_chema","root","mysql");
		Statement stmt = con.createStatement();
		
		try{
			int res= stmt.executeUpdate
			("update bookinfo set title='"+title+"',writer='"+writer+"',price='"+price+"'where code='"+code+"'");
			if(res<1){
				out.print("수정되지 않았습니다");
			}
		}
		catch(Exception e){
			out.print(e.getMessage());
		}
		response.sendRedirect("UpdateResult.jsp?code="+code);
	%>
</body>
</html>