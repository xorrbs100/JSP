<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
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
      FileReader fr = null;
      BufferedReader br = null;
      String line = null;
      
      try {
      
         fr = new FileReader("C:\\Users\\TJ\\Desktop\\JAVA_Study\\list.txt");
         
         br = new BufferedReader(fr);
         
         while((line = br.readLine()) != null){
            
            out.print(line);
            out.print("<br>");
            
         }
         
         
      }catch(IOException e){
         
         out.print(e.getMessage());
         
      }
   
   %>

</body>
</html>