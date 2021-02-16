<!-- 
	회원탈퇴처리
		- 회원체크(id가 null이 아니면)
			. removeMemeber(id) 처리가 됬다면
				. 세션처리
				. 회원정보삭제 - removeMember()이용 삭제 - > 로그인화면(index.jsp)
				
			.  removeMemeber(id) 처리가 안됬다면
				- 회원정보를 삭제하지 못했습니다. - >member_info.jsp 
		-  회원체크(id 가 null이면)
			. "로그인이 필요합니다" - > index.jsp
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="data" class="member.DataManagerDAO" scope="page"></jsp:useBean>
	<%
		String id= (String)session.getAttribute("ID");
		if(id!=null){
			if(data.removeMember(id)!=0){
				out.print("<h3>회원정보를 삭제하였습니다</h3>");
				session.invalidate();
				
				out.print("<h3><a href='index.jsp'>메인화면으로 돌아가기</a></h3>");
			}else{
				out.print("<h3>회원정보를 삭제하지 못했습니다. 다시 시도해 주세요</h3>");
				out.print("<a href='member_info.jsp'>회원정보 확인창으로 돌아가기</a>");
			}
			
		}else{
			out.print("<a href='index.jsp'>로그인이 필요합니다</a>");
		}
	%>
</body>
</html>