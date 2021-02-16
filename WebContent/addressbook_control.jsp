<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   import="jspbook.addressbook.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨트롤러</title>
</head>
<body>
	<jsp:useBean id="ab" class="jspbook.addressbook.AddressBean" scope="page"></jsp:useBean>
	<jsp:useBean id="addrbook" class="jspbook.addressbook.AddressBook" scope="page"/>
	<jsp:setProperty property="*" name="addrbook"/>
	
	<%
		String action = request.getParameter("action");
	
		if(action.equals("list")){		//전체출력 -getDBList()
			response.sendRedirect("addressbook_list.jsp");
			
		}
		else if(action.equals("insert")){	//새정보 추가 - insertList()
			if(ab.insertDB(addrbook)){
				addrbook.setName(request.getParameter("name"));
				addrbook.setEmail(request.getParameter("email"));
				addrbook.setComdept(request.getParameter("comdept"));
				addrbook.setBirth(request.getParameter("birth"));
				addrbook.setTel(request.getParameter("tel"));
				addrbook.setMemo(request.getParameter("memo"));
				response.sendRedirect("addressbook_control.jsp?action=list");
				
			}else{
				throw new Exception("DB입력오류");
			}
		}
		//수정 - getDB();
		else if(action.equals("edit")){
			AddressBook adb = ab.getDB(addrbook.getId());
			if(request.getParameter("upasswd").equals("1234")){
				request.setAttribute("ab", adb);
				/* adb.getName();
				adb.getEmail();
				adb.getTel();
				adb.getBirth();
				adb.getComdept();
				adb.getMemo(); */
				
				pageContext.forward("addressbook_edit_form.jsp");
			}else{
				out.print("<script>alert('비밀번호가 틀렸습니다');history.go(-1);</script>");
			}
		}
		//수정처리-updateDB
		else if(action.equals("update")){
			if(ab.updateDB(addrbook)){
				response.sendRedirect("addressbook_control.jsp?action=list");
			}
			else{
				throw new Exception("DB갱신오류");
			}
		}
		//삭제-deleteDB()
		else if(action.equals("delete")){
			if(ab.deleteDB(addrbook.getId())){
				response.sendRedirect("addressbook_control.jsp?action=list");
			}
			else{
				throw new Exception("DB삭제오류");
			}
		}
		
	%>
	[<a href="addressbook_list.jsp">주소록 목록가기</a>]
</body>
</html>