<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter,java.util.GregorianCalendar,java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		PrintWriter log;
		public void jspinit(){
			try{
				log = new PrintWriter(new FileWriter("c:/Test/jspLog.txt"));
				
			}catch(IOException e){
				System.out.println(e.getMessage());
			}
		}
		
		public void jspDestroy(){
			if(log!=null){
				log.close();
			}
		}
		
	%>
	<%	
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		response.setContentType("text/html; charset=utf-8");
		GregorianCalendar gc = new GregorianCalendar();
		String msg = name + "님 안녕하세요 환영합니다.";
	%>
	<%= msg %>
	
</body>
</html>