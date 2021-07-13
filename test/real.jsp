<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="todooracle.DBconnet" %>
   <%@ page import= "java.sql.Connection"  %>
   <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">


	function buttonclick(){
		 location.href = "text.jsp";
	}

</script>
</head>
<body>

<%	
	String login_ture=(String)session.getAttribute("login_check");
	if(login_ture==null||login_ture.equals("ture")  ){
	}
	else{
		%>
		<script> 
		alert('로그인실패.');
		location.href = "real.jsp";
		</script>
		<% 
	}//세션 만료체크 
	
	String userID = null;
	if(session.getAttribute("id_del") != null){
		userID = (String)session.getAttribute("id_del");
	}//아이디 세션 체크 
		out.print("아이디:  "+ userID);
%>
<input id="id_check" type="button" value = "글쓰기" onclick="buttonclick()" >
	  
	<%
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from text";
	
	try{
	conn= new DBconnet().getConnection();
	pstmt= conn.prepareStatement(sql);
	rs=pstmt.executeQuery(); 
	%>
	<table>
	<tr><td>NO</td><td>TITLE</td><td>ID</td></tr>
	<% 
	while(rs.next()){
		%>
		<tr><td><%=rs.getInt("num") %></td>
		<td><a href="view.jsp"><%=rs.getString("title") %></a></td>
		<td><%=rs.getString("id") %></td></tr>
		
		<% 
	}
	%></table>
	<%
	
	}catch(SQLException e){
		out.print("<script> alert('오류발생');</script>");
	}
	

	
	
	
	
	conn.close();
	
	%>




</body>
</html>