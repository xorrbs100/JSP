<!-- 
	JSP 문서의 구조
		1. page 지시어 : JSP페이지에 대한 정보를 설정하는데 사용되는 부분
		2. HTML: 텍스트 내용
		3. 스크립트 코드 : scriptlet을 활용해서 java문법으로 프로그램을 구현하여 동적페이지를 구현한다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.Math" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 날짜의 시각 출력</title>
</head>
<body>
	<h2>이 페이지는 오늘의 날짜와 시간을 출력해주는 페이지 입니다.</h2>
	<hr>
	<p>오늘의 날짜와 시간은</p>
	<%
		Calendar now = Calendar.getInstance();
		int yy = now.get(Calendar.YEAR);
		int mm = now.get(Calendar.MONTH)+1;
		int dd = now.get(Calendar.DATE);
		
		out.print(yy+"년"+mm+"월"+dd+"일");

		//요일을 출력해보세요
		int DayOfWeek = now.get(Calendar.DAY_OF_WEEK); 
	  	 String strDayOfWeek = "";
  		 switch(DayOfWeek){
	      case 1:
	         strDayOfWeek = "일요일";
	         break;
	      case 2:
	         strDayOfWeek = "월요일";
	         break;
	      case 3:
	         strDayOfWeek = "화요일";
	         break;
	      case 4:
	         strDayOfWeek = "수요일";
	         break;
	      case 5:
	         strDayOfWeek = "목요일";
	         break;
	      case 6:
	         strDayOfWeek = "금요일";
	         break;
	      case 7:
	         strDayOfWeek = "토요일";
	         break;
	      }
	 	out.print(strDayOfWeek);
	%>
	
</body>
</html>