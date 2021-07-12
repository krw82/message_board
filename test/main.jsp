<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="todooracle.DBconnet" %>
   <%@ page import= "java.sql.Connection"  %>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> main</title>
</head>

<body>
 <% 
 
	
 	Connection conn= new DBconnet().getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM test";
	
	pstmt= conn.prepareStatement(sql);
	rs=pstmt.executeQuery(); 
	
	
	 while(rs.next()){
		 
		 
		if(rs.getString("ID_").equals(request.getParameter("login_id"))&& 
			rs.getString("password_").equals(request.getParameter("login_password")))
		{
			out.print("로그인성공");
			String a=(String)request.getParameter("login_save");
			session.setAttribute("login", "ture");
			
			out.print(a);
			
		 	if(a==null)
			{	
			  
			} 
		 	else {
		 		session.setAttribute("id_session",rs.getString("ID_"));
				session.setAttribute("pw_session",rs.getString("password_"));
		 	}
			
			break;
			
		} 
	}  
	 
	
	conn.close();
	
	
	%>
	
	
실패
</body>
</html>