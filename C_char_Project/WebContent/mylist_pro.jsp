<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
@font-face {
	font-family: 'NANUMBARUNGOTHICLIGHT';
	src: url(font/NANUMBARUNGOTHICLIGHT.TTF) format('truetype');
}

body {
	margin: 0px;
	padding: 0px;
}

div.name {
	background-color: #1AAB8A;
	color: white;
	height: 50px;
	width: 700px;
	text-align: center;
	padding-top: 20px;
}
</style>
<body>
	<div style="font-family: NANUMBARUNGOTHICLIGHT;">
		<center>
			<h1>
				<div style="margin-top: 50px; margin-bottom: 5px">
					<label style="color: #1AAB8A;">한자</label>&nbsp;저장<label
						style="color: #1AAB8A;">리스트</label>
				</div>
			</h1>

			<%
				String str1 = request.getParameter("send");

				String grade = request.getParameter("grade");
				String count = request.getParameter("count");

				String filenamess = request.getParameter("FILE_NAME");

				String dirPath = application.getRealPath("/WEB-INF/list");

				File dir = new File(dirPath);
				String filenames[] = dir.list();

				//1번째 도전

				for (String filename : filenames) {
					String f_name = filename.substring(0, 6);
			%>
			<br>
			<br>
			<h2>
				<div class="name"><%=f_name%></div>
			</h2>
			<%
				BufferedReader reader = null;

					try {
						String filePath = application.getRealPath("/WEB-INF/list/" + filename);

						reader = new BufferedReader(new FileReader(filePath));

						while (true) {
							String str = reader.readLine();
							if (str == null)
								break;
			%>
			<%
				out.println(str + "<br>");
			%>

			<%
				}
					} catch (Exception e) {
						out.println("파일을 읽을 수 없습니다.");
					}

				}
			%>
			
		</center>
	</div>
</body>
</html>