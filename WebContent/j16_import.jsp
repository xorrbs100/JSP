<!-- 
	import 속성 : java패키지에 있는 다양한 클래스를 jsp에도 사용할 수 있다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.swing.*,java.awt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>시작버튼 시작,종료2개, 바탕색은 yellow 창크기 500,500</h3>
	
	<%
		JFrame frame=new JFrame();
		frame.setTitle("");
		frame.setSize(500,500);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c=frame.getContentPane();
		c.setLayout(new FlowLayout());
		JButton btn1=new JButton("시작");
		JButton btn2=new JButton("종료");
		JButton btn3=new JButton("종료");
		btn1.setSize(50, 50);
		btn2.setSize(50, 50);
		btn3.setSize(50, 50);
		c.add(btn1);
		c.add(btn2);
		c.add(btn3);
		c.setBackground(Color.YELLOW);
		frame.setVisible(true);		
	%>
</body>
</html>