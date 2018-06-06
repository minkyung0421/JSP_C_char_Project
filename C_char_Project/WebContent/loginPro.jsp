<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String strReferer = request.getHeader("referer");

	if(strReferer == null){
	%>
	<script>
		alert("다시 접근");
		document.location.href = "start.jsp";
	</script>
	<%
		return;
	}
%>

<%
	request.setCharacterEncoding("UTF-8");
	String ID = request.getParameter("id");
	String PW = request.getParameter("pw");
	
	String tmpText = "";
	String[] tmpArray1;
	String[] tmpArray2;
	
	if(ID.equals("choi") && PW.equals("1234")){
		session.setAttribute("id", "admin");
		
		%>
		<jsp:forward page = 'main.jsp'></jsp:forward>
	<%}else{
		%> 
		<script>
			alert("존재하지 않는 정보입니다. 다시 입력해주세요");
		</script>
		<jsp:forward page = 'login.jsp'></jsp:forward>
		<%
	}
%>
	
</body>
</html>