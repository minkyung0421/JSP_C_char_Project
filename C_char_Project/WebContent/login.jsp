<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
@font-face { font-family: 'NANUMBARUNGOTHICLIGHT'; src: url(font/NANUMBARUNGOTHICLIGHT.TTF) format('truetype'); } 
	body{
		font-family: NANUMBARUNGOTHICLIGHT
	}
	
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

	
	body{
		background-color: #1AAB8A;
	}

</style>

<%
	request.setCharacterEncoding("UTF-8");
%>

<script>

function checkValue(){
	
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	
	if(!document.userInfo.id.value){
		alert("아이디를 입력해주세요.");
		return false;
	}
	
	if(!document.userInfo.pw.value){
		alert("비밀번호를 입력해주세요.");
	}
	
	if(document.userInfo.pw.value != "1234" || document.userInfo.id.value != "choi"){
		alert("존재하지 않는 회원정보입니다.");	
	}else{
		alert("환영합니다!");
	}

}

</script>

<body>
<center>
<form method = "post" action = "loginPro.jsp" name = "userInfo" onsubmit = "return checkValue()">
	<table rules=groups border = 2 bordercolor = #1AAB8A  style = "background-color: white; margin-top: 300px;">
		<tr>
			<td>
				<label style = "margin-right:30px">아이디</label>
				<input type = "text" name = "id" id = "id" style = "height: 25px">
			</td>
		</tr>
		<tr>
			<td>
				<label style = "margin-right:16px">비밀번호</label>	
				<input type = "password" name = "pw" id = "pw" style = "height: 25px">
			</td>
		</tr>
		<tr>
			<td>
				<input type = "submit" value = "로그인" class = "button" style = "margin-right: 20px">
				<a href = "loginPro.jsp"><input type = "button" value = "비회원" class = "button"></a>
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>