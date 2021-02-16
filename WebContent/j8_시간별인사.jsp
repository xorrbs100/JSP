<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-image: url("./스폰지밥.png");
		color: red;
		font-size: 50px;
	} 
</style>
</head>
<body>
	
	<h3>시간별 인사</h3>
	<hr>
	<%
		Calendar now = Calendar.getInstance();
		String strAMPM="";
		int hour = now.get(Calendar.HOUR);
		if(hour<12){
			
			strAMPM="오전";
		}
		else {
			hour-=12;
			strAMPM="오후";
		}
		
		int yy = now.get(Calendar.YEAR);
		int mm = now.get(Calendar.MONTH)+1;
		int dd = now.get(Calendar.DATE);
		int minute=now.get(Calendar.MINUTE);
		out.print("지금은"+strAMPM+hour+"시"+minute+"분 입니다");
	%>
	
</body>
</html>