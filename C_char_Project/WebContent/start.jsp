<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	td{
		padding: 30px;
		margin-left: 50px;
	}
	
	.text{
		padding:10px;
	}
	
	.button{
		background:#1AAB8A;
		color: #fff;
		border: none;
		position:relative;
		height: 40px;
		font-size: 13pt;
		padding: 0 2em;
		cursor: pointer;
		transition: 800ms ease all;
		outline: none;
	}
	
	.button:hover{
  		background:#fff;
  		color:#1AAB8A;
	}

	label{
		 color: #1AAB8A;
		 font-size: 15pt;
		 margin-left:30px;
	}
	
	body{
		background-color: #1AAB8A;
	}

</style>

<%
	request.setCharacterEncoding("UTF-8");
%>

<body>
<center>
<form method = "post" action = "login.jsp">
	<table rules=groups border = 2 bordercolor = #1AAB8A  style = "background-color: white; margin-top: 200px;">
		<tr>
			<td>
				<img src = "image/tree.png">
			</td>
		</tr>
		<tr>
			<td><input type = "submit" value = "시작하기" class = "button" style = "margin-left:99px"></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>