<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if(!frm.num.value){	//값이 없거나
			alert("숫자를 입력해 주세요");
			frm.num.focus();
			return false;
		}
		if(isNaN(frm.num.value)){
			alert("숫자가 아닙니다");
			frm.num.value="";
			frm.num.focus();
			return false;
		}
		return true;
	}
</script>
</head>
	<%
		int sum=0, num=0;
		if(request.getParameter("num") !=null){
			num=Integer.parseInt(request.getParameter("num"));
			for(int i=1;i<=num;i++){
				sum+=i;
			}
		}
	%>
<body>
	<h1>누적값을 더할 숫자를 입력해 주세요</h1>
	<form action="SumInOut.jsp" name="frm" onsubmit="return chk()">
		숫자 : <input type="text" name="num"><p>
		<input type="submit" value="확인">
	</form>

	<h2>1부터 <%=num %>까지의 누적합은 <%=sum %>이다</h2>
</body>
</html>