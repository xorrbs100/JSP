<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" errorPage="DBError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pass= request.getParameter("pass");
		request.setAttribute("NAME", name);
		request.setAttribute("ID", id);
		request.setAttribute("PASS", pass);
		//미입력시 예외처리
		if(name==null||id==null||pass==null){
			throw new Exception("데이터를 입력해 주세요");
		}
		
		//접속
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/joen_chema","root","mysql");
		//접속확인
		if(con==null){
			throw new Exception("데이터 베이스에 연결할 수 없습니다.");
		}
		Statement stmt = con.createStatement();
		String command = String.format("insert into userinfo values('%s','%s','%s')",name,id,pass);
		int rowNum= stmt.executeUpdate(command);
		//실패
		if(rowNum<1){
			throw new Exception("데이터를 DB에 입력할 수 없습니다.");
		}
		con.close();
		stmt.close();
		
		//출력할 페이지로 이동
		response.sendRedirect("InputUserInfoOutput.jsp");
	%>
</body>
</html>