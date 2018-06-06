<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<style>
@font-face { font-family: 'NANUMBARUNGOTHIC'; src: url(font/NANUMBARUNGOTHIC.TTF) format('truetype'); } 

body { font-family: NANUMBARUNGOTHIC; }

	ul.mylist, ol.mylist{
		list-style: none;
		margin: 0px;
		padding: 20px;
		max-width: 200px;
		height: 100%;
	}
	
	ul.mylist li, ol.mylist li{
		padding: 30px;
		margin-bottom: 5px;
		border-bottom: 1px solid #D8D8D8;
		font-size: 15pt;
	}
	
	ul.mylist li:hover{
		background-color:#1AAB8A;
		color:white;
	}
	 a:link { text-decoration: none;}
	 a:visited {text-decoration: none;}
	 a:action{
	 	text-decoration: none;
	 }
	
</style>
<%!String checkId = ""; %>
<%
	request.setCharacterEncoding("UTF-8");

	checkId = (String)session.getAttribute("id");
	
%>
<body>
<center>
<div style = "margin-left:40px;">
<div>
	<a href = "start.jsp"><img src = "image/tree.png" width = 200px height = 200px></a>
</div>
<h1>
<ul class = "mylist">
	<a href = "cpaint.jsp" style = "color:black"><li>그림한자</li></a>
	<a href = "cstory.jsp" style = "color:black"><li>이야기한자</li></a>
<%
	if(checkId.equals("")){%>
		<a href = "login.jsp" style = "color:black"><li>로그인</li></a>
	<%}else{%>
		<a href = "mylist.jsp" style = "color:black"><li>저장리스트</li></a>
		<a href = "logout.jsp" style = "color:black"><li>로그아웃</li></a>
	<%}
%>
	
</ul>
</h1>
</div>
</center>
</body>
</html>