<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
   <%@ page import="todooracle.DBconnet" %>
   <%@ page import= "java.sql.Connection"  %>
   


   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create</title>
 
</head>
<body>
<script type="text/javascript">


	function buttonclick(){
		alert("true");
	}
	function pass(){
		var p1= document.getElementById('passwordpassword').value;
		var p2= document.getElementById('passwordchecktext').value;
		if(p1 !=p2){
			alert("비밀번호 일치하지않습니다");
		}
		else{
			alert("true");
		}
		
	}

</script>
	

		<form action="./sub.jsp" method="post">
		<fieldset>
			<table border="1" style ="margin-left:auto; margin-right:auto;">
				<tr>
					<td colspan = "3"><label for="name">아이디입력</label></td>
				
				</tr>
				<tr>
				<td><label>사용자 id</label></td>
				<td><input name="id" type="text" />
				<input id="id_check" type="button" value = "중복확인" onclick="buttonclick()" ></td>
				</tr>
				<tr>
				<td><label for ="password">비밀번호</label></td>
				<td><input name="password_" id="passwordpassword" type="password" /></td>
				
				</tr>
				<tr>
				<td><label for ="passwordcheck">비밀번호확인</label></td>
				<td><input id="passwordchecktext" type="password" />
					
					
		
				</tr>
				<!-- <tr>
				<td>개인정보 입력</td>
				</tr>
				<tr>
				<td><label for ="id">사용자 이름</label></td>
				<td><input id="id" type="text" /></td>
				
				</tr>
				<tr>
				<td><label for ="id">주민등록번호</label></td>  
				<td><input id="id" type="text" />-<input id="id" type="text"></td>
				</tr>
				<tr>
				<td><label for ="id">email</label></td>
				<td><input id="id" type="text"/></td>
				
				</tr>
				<tr>
				<td><label for ="id">blog</label></td>
				<td><input id="id" /></td>
				</tr>
				<tr>
				<tr>
				<td><label for ="id">우편번호</label></td>
				<td><input id="id" type="text" /><input id="id" type="button" value = "우편번호 검색"></td>
				</tr>
				<tr>
				<td><label for ="id">주소</label></td>
				<td ><input id="id" type="text" /></td>
				</tr> -->
				
				
			</table>
			<input type="submit" style ="margin-left:auto; margin-right:auto;"> 	
		
		</fieldset>
		</form>
</body>
</html>