<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="todooracle.DBconnet" %>
   <%@ page import= "java.sql.Connection"  %>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sub</title>
</head>
<jsp:useBean id="member" class="javabeen.mamber"/>
<body>

<%
	member.setId(request.getParameter("id"));
	member.setPw(request.getParameter("password_")); 
	
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "insert into test values('"+member.getId()+"','"+member.getPw()+"')";
	
	
	try{
		conn= new DBconnet().getConnection();
	pstmt= conn.prepareStatement(sql);
	rs=pstmt.executeQuery(); 
	}catch(SQLException e){
		out.print("<script> alert('오류발생');</script>");
	}
	
	conn.close();
	%>
	<script> location.href = "login.jsp"  </script>
	
	<%

%>
	
</body>
</html>