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
		String info = application.getServerInfo();
	
		int ma = application.getMajorVersion();
		int mi = application.getMinorVersion();
		
		/*  major,minor명명법
			patch의 의미를 담고 구분하는 명명법
			major : 이전버전과 호환이 안되는 변경이 있을 때의 숫자를 올리는 자리버전
			minor : 이전버전과 호환이 되는 기능이 추가되었을 때 올리는 자리버전
		*/
		
		application.log("오늘 jsp첫 수업이었습니다. 환경설정을 하였고 내일은 문법을 시작합니다.");	/* 콘솔창에 보여진다 */

	%>
	서버정보 : <%= info %><p>
	메이저버전 :<%= ma %><br>
	마이너버전 :<%= mi %><br>
	
</body>	
</html>