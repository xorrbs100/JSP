<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h3>데이터베이스 연결테스트</h3>
   <%
   	
      Class.forName("com.mysql.jdbc.Driver");   //JDBC드라이버 접속
    
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/joen_chema","root","mysql");	//DB에 접속
      
      if(con != null) {
         out.print("데이터베이스 접속완료");
         con.close();
         out.print("데이터베이스 셧다운");
      }
      else {
         out.print("데이터베이스에 연결할 수 없습니다.");
      }
   %>
</body>
</html>