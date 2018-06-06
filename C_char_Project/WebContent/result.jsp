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
	String str = request.getParameter("send");

	if(str.equals("ok")){
		out.println("점수 저장 완료!");
	}else if(str.equals("fail1")){
		out.println("저장을 실패했습니다 ㅠㅠ");
	}else{
		out.println("저장을 실패했습니다 ㅠㅠ");
	}
%>
<input type = "button" value = "확인" style = "margin-top:20px" class = "button">
</body>

</html>