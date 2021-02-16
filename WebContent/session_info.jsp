<!-- 
	세션(session)
		. 쿠키 : 사용자정보파일이 클라이언트에 저장되는 데이터
		. 세션 : 사용자정보파일이 웹컨테이너에 저장되는 데이터
		
	1) 생성 : - 클라이언트가  웹컨테이너에 접속할 때 클라이언트 별로 세션이 자동생성(세션객체에 의해서)
			- 고유한ID (세션ID)발생 --- > 클라이언트에 전송 --- > 세션ID로 접속
	
	2) 특징 : - 각 클라이언트에게 고유한 ID부여
			- 세션ID로 클라이언트를 구분해서 클라이언트의 요구에 맞는 서비스제공
			- 보안면에서 쿠키보다 우수
			- 사용자가 많아질수록 서버의 메모리를 많이 차지하게 된다.
	
	3) 활용 : - 세션 : 로그인 같이 보안상 중요한 작업을 수행할 때 사용
			- 쿠키 : . 아이디와 비밀번호를 저장하시겠습니까?
					. 쇼핑몰 장바구니기능
					. 자동로그인
					. 오늘은 더이상 이 창을 보이지 않음 등
					
					
	. session내장객체 메소드
		- getID()
		- getCreatTime()
		- getLastAccessTime()
		- getMaxInterval(long) : 유효시간
		- invalidate() : 세션삭제
		
		- getAttrivute(), setAttribute()
					
 -->

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date c_time = new Date();
		Date m_time = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		c_time.setTime(session.getCreationTime());	//최초 생성시간
		m_time.setTime(session.getLastAccessedTime()); //마지막 접근시간
	%>
	<h3>
		세션 아이디 :
		<%= session.getId() %><br> 
		세션 생성시간 :
		<%= formatter.format(c_time) %><br> 
		세션 최종접근시간 :
		<%= formatter.format(m_time) %><br>

	</h3>

</body>
</html>