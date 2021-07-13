<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="todooracle.DBconnet" %>
   <%@ page import= "java.sql.Connection"  %>
   <%@ page import="java.sql.*" %>
   <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>text sub</title>
</head>
<body>


	<%
	
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "insert into text values(sysdate,text_count.NEXTVAL,?,?,?)";
	//날짜,글번호,  id, 내용,제목
	
	//String sql = "insert into text values(null,null,'s','s','s')";
	//String sql = "select * from text";
	//날짜,글번호,  id, 내용,제목


	try{
		conn= new DBconnet().getConnection();
	pstmt= conn.prepareStatement(sql);
	pstmt.setString(1,(String)session.getAttribute("id_session"));
	pstmt.setString(2,request.getParameter("text_text"));
	pstmt.setString(3,request.getParameter("text_title"));
	
	rs=pstmt.executeQuery(); 
	
	}catch(SQLException e){
		out.print("<script> alert('오류발생');</script>");
	}
	
	conn.close();
	%>
	
	

</body>
