<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass= request.getParameter("pass");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address= request.getParameter("address");
		
		//변수선언
		String url = "jdbc:mysql://localhost:3306/joen_chema";
		Connection con = null;
		Statement stmt = null;
		
		//값입력
		int res=0;						//values('id','pass','name',,,);
		String query = "insert into members values(?,?,?,?,?)";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,"root","mysql");
			
			//**********
			PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, id);
				pstmt.setString(2, pass);
				pstmt.setString(3, name);
				pstmt.setString(4, phone);
				pstmt.setString(5, address);
			pstmt.executeUpdate();
			
			out.print("입력에 성공하셨습니다.");
			
		}catch(Exception e){
			out.print(e.getMessage());
		}
		finally{
			if(con !=null){
				try{
					con.close();
				}
				catch(Exception e){
					
				}
			}
			if(stmt !=null){
				try{
					stmt.close();
				}
				catch(Exception e){
					
				}
			}
		}
		
	%>
</body>
</html>