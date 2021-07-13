
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
		 
		 if(rs.getString("ID_").equals(request.getParameter("login_id")) && rs.getString("PASSWORD_").equals(request.getParameter("login_password"))){
			
			String a=(String)request.getParameter("login_save");
			session.setAttribute("login", "ture");
			session.setAttribute("id_del",rs.getString("ID_"));
		 	if(a==null){}else {
		 		session.setAttribute("id_session",(String)rs.getString("ID_"));// 세션을 두개 만들어야함.
				session.setAttribute("pw_session",(String)rs.getString("password_"));
		 		
			}   
		 	out.print("<script>alert('로그인성공');</script>");
		 	%>
		 	  <script> 
			 location.href = "real.jsp" 
			 </script>  
			 
			 <% 	
	break;
		}
		 
		 
	}   
	 
	 %>
	  <script> 
	 alert('로그인실패');
	 location.href = "login.jsp" 
	 
	 </script>  
	 <% 
	
	
	 conn.close();
	%>
	
	
	
	

	
	

</body>
</html>