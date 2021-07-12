<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="todooracle.DBconnet" %>
   <%@ page import= "java.sql.Connection"  %>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content = "width = device-width" ,initial-scale="1">

<title>login</title>
<%  String aa= (String)session.getAttribute("id_session");
if(aa==null){
	aa="";
}
	String pass=(String)session.getAttribute("pw_session");
	if(pass==null){
		pass="";
	}


%>
	

</head>

<body>


	로그인<br><br>
	
	<form action="main.jsp" method="post">
	아이디
		<input type="text" name="login_id" value="<%= aa %>" ><br>	
	비밀번호
		<input type="password" name="login_password" value="<%=pass %>" ><br>
	<br> 아이디 저장
		<input type="checkbox" name="login_save" value="1">
		<input type="submit" value="로그인" >
		<input type="button" value="회원가입" onclick="location.href='create.jsp'">
	</form>

</body>
</html>