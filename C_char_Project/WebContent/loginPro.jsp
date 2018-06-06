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
	request.setCharacterEncoding("UTF-8");
	String ID = request.getParameter("id");
	String PW = request.getParameter("pw");

	String userID="choi";
    String userPWD="1234";
	
	if(userID.equals(ID) && userPWD.equals(PW)){
		session.setAttribute("id", ID);
		%>
		<jsp:forward page = 'main.jsp'></jsp:forward>
		
	<%
		response.sendRedirect("./menu.jsp");
	}else if(!userID.equals(ID) && !userPWD.equals(PW)){
		session.setAttribute("id", "");
		%> 
		<jsp:forward page = 'main.jsp'></jsp:forward>
		<%
		response.sendRedirect("./menu.jsp");
		response.sendRedirect("./cstory_result_pro.jsp");
	}
%>
	
</body>
</html>