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
	String contentpage = request.getParameter("CONTENTPAGE");


%>

<center>
<table border = 0 width = 100%  height = 850>
	<tr>
		<td valign = "top" width = "300px">
			<jsp:include page = "menu.jsp" flush = "false"/>
		</td>
		<td valign = "top" height = "800px">
			<jsp:include page = "<%= contentpage %>"/>
		</td>
	</tr>
	<tr>
		<td colspan = "2"><jsp:include page = "copyright.jsp" flush = "false"/></td>
	</tr>


</table>
</center>
</body>
</html>