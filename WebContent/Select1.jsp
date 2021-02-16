<!-- 
	1. import
	2. 드라이버 로드
	3. DB에 연결
	
	4. 필요한 변수선언
		url			String			서버접속
		user		String			MySQL접속 사용자 아이디
		pw			String			비번
		
		conn		Conncection		MySQL서버와의 접속정보를 저장
		stmt		Statement		MySQL서버에서 실행시킬 SQL구문저장
		rs			ResultSet		SQL구문을 실행한 결과를 저장
		
	5. Statment객체생성
	6. ResultSet - 쿼리실행
					. executeQuery(query) - select
					. executeUpdate(query) - insert, update, delete
	7. 결과물 출력 - try~~catch,  rs.getString ("속성명") getInt("속성명")
	8. 서버연결종류 - conn.close()
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원명부</h2>
	<table border="1" class="table">
	
		<tr><th>아이디<th>비밀번호<th>이름<th>전화번호<th>주소
		<%
			// 변수선언
			Connection conn = null; //url
			Statement stmt = null; //sql
			ResultSet rs = null;
			
			String url = "jdbc:mysql://localhost:3306/joen_chema";
			String user="root";
			String pw = "mysql";
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(url, user, pw);
				
				stmt = conn.createStatement();
				
				rs = stmt.executeQuery("select * from members");
				
				while(rs.next()){
					out.print("<tr><td>"+rs.getString("id")+"</td>");
					out.print("<td>"+rs.getString("pass")+"</td>");
					out.print("<td>"+rs.getString("name")+"</td>");
					out.print("<td>"+rs.getString("phone")+"</td>");
					out.print("<td>"+rs.getString("address")+"</td>");
				}
			}
			catch(Exception e){
				out.print(e.getMessage());
			}
			
		%>
	</table>
</body>
</html>