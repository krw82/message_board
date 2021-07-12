<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String login_ture=(String)session.getAttribute("login");
	if(login_ture.equals("true")){
		
	}
	else{
		out.println("<script>alert('세션이 만료되었습니다.');</script>");
		response.sendRedirect("login.jsp");
	}



%>
</body>
</html>