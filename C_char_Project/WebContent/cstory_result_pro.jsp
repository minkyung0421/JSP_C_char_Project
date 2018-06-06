<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@font-face {
	font-family: 'NANUMBARUNGOTHICLIGHT';
	src: url(font/NANUMBARUNGOTHICLIGHT.TTF) format('truetype');
}
</style>
</head>
<style>
body {
	margin: 0px;
	padding: 0px;
}

.button {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	height: 40px;
	font-size: 13pt;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	margin-bottom: 30px;
}

.button:hover {
	background: #fff;
	color: #1AAB8A;
}
</style>
<body>
	<center>
		<div style="font-family: NANUMBARUNGOTHICLIGHT;">
			<h1>
				<div style="margin-top: 50px; margin-bottom: 50px">
					<label style="color: #1AAB8A;">정답</label>확인
				</div>
			</h1>
			<%!int count = 0, c_count;%>
			<%
				request.setCharacterEncoding("UTF-8");

				String one = request.getParameter("one");
				String two = request.getParameter("two");
				String two_t = request.getParameter("two_t");
				String three = request.getParameter("three");
				String three_t = request.getParameter("three_t");
				String four = request.getParameter("four");
				String five = request.getParameter("five");
				String five_t = request.getParameter("five_t");
				String six = request.getParameter("six");
				String six_t = request.getParameter("six_t");
				String seven = request.getParameter("seven");
				String eight = request.getParameter("eight");
				String nine = request.getParameter("nine");
				String nine_t = request.getParameter("nine_t");
				String ten = request.getParameter("ten");

				int grade = 0;

				String filename = (c_count+1) + "번째 도전.txt";
				String result;
				PrintWriter writer = null;

				try {
					if (!one.equals("") && !two.equals("") && !two_t.equals("") && !three.equals("") && !three_t.equals("")
							&& !four.equals("") && !five.equals("") && !five_t.equals("") && !six.equals("")
							&& !six_t.equals("") && !seven.equals("") && !eight.equals("") && !nine.equals("")
							&& !nine_t.equals("") && !ten.equals("")) {

						String filePath = application.getRealPath("/WEB-INF/list/" + filename);
						writer = new PrintWriter(filePath);

						count += 1;
						c_count = count;
						
						if (one.equals("o")) {
							grade += 10;
						} else {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 교문 앞에 서 계시는 저 女子(여자)분이 우리 담임 선생님이시다.</h3> A. 字(글자
				자)&nbsp;&nbsp;&nbsp;者(놈 자)&nbsp;&nbsp;&nbsp;先(먼저
				선)&nbsp;&nbsp;&nbsp;生(살 생)&nbsp;&nbsp;&nbsp;<label
				style="color: black; font-weight: bold">子(아들 자)</label>
			</label> <br> <br>
			<%
				writer.printf("1번 문제 : 子(아들 자)<br>");
						}

						if (two.equals("o")) {
							grade += 5;
						} else {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 우리 父子(부자)는 주말에 함께 운동을 한다.</h3> A1. <label
				style="color: black; font-weight: bold">父(아비 부)</label>&nbsp;&nbsp;&nbsp;母(어미
				모)&nbsp;&nbsp;&nbsp;弟(아우 제)&nbsp;&nbsp;&nbsp;兄(형
				형)&nbsp;&nbsp;&nbsp;祖(할아비 조)
			</label>
			<%
				writer.printf("2번 문제 : 父(아비 부)<br>");
						}

						if (two_t.equals("o")) {
							grade += 5;
						} else {
			%>
			<%
				if (two.equals("o")) {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 우리 父子(부자)는 주말에 함께 운동을 한다.</h3>
			</label>
			<%
				}
			%>
			<br> <label style="color: #BDBDBD"> A2. 父(아비
				부)&nbsp;&nbsp;&nbsp;母(어미 모)&nbsp;&nbsp;&nbsp;<label
				style="color: black; font-weight: bold">子(아들 자)</label>&nbsp;&nbsp;&nbsp;天(하늘
				천)&nbsp;&nbsp;&nbsp;足(발 족)
			</label> <br> <br>
			<%
				writer.printf("2-2번 문제 : 子(아들 자)<br>");
						}

						if (three.equals("o")) {
							grade += 5;
						} else {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 어머니께서는 백화점에서 아동용 여름 內衣(내의)와 음식을 사오셨다.</h3> A1. 來(올
				래)&nbsp;&nbsp;&nbsp;江(강 강)&nbsp;&nbsp;&nbsp;<label
				style="color: black; font-weight: bold">內(안 내)</label>&nbsp;&nbsp;&nbsp;安(편안할
				안)&nbsp;&nbsp;&nbsp;西(서녘 서)
			</label>
			<%
				writer.printf("3번 문제 : 內(안 내)<br>");
						}

						if (three_t.equals("o")) {
							grade += 5;
						} else {
			%>
			<%
				if (three.equals("o")) {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 어머니께서는 백화점에서 아동용 여름 內衣(내의)와 음식을 사오셨다.</h3>
			</label>
			<%
				}
			%>
			<br> <label style="color: #BDBDBD"> A2. 意(뜻
				의)&nbsp;&nbsp;&nbsp;<label style="color: black; font-weight: bold">衣(옷
					의)</label>&nbsp;&nbsp;&nbsp;義(옳을 의)&nbsp;&nbsp;&nbsp;服(옷
				복)&nbsp;&nbsp;&nbsp;兒(아이 아)
			</label> <br> <br>
			<%
				writer.printf("3-2번 문제 : 衣(옷 의)<br>");
						}

						if (four.equals("o")) {
							grade += 10;
						} else {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 王子(왕자)는 부모님이 편찮으시다는 소식을 듣고 왕궁을 향해 달려갔다.</h3> A. 往(갈
				왕)&nbsp;&nbsp;&nbsp;旺(왕성할 왕)&nbsp;&nbsp;&nbsp;主(주인
				주)&nbsp;&nbsp;&nbsp;<label style="color: black; font-weight: bold">王(왕
					왕)</label>&nbsp;&nbsp;&nbsp;正(바를 정)
			</label> <br> <br>
			<%
				writer.printf("4번 문제 : 王(왕 왕)<br>");
						}

						if (five.equals("o")) {
							grade += 5;
						} else {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 도랑치고 가재잡고 一石二鳥(일석이조)다</h3> A1. <label
				style="color: black; font-weight: bold">一(한 일)</label>&nbsp;&nbsp;&nbsp;日(날
				일)&nbsp;&nbsp;&nbsp;逸(편안할 일)&nbsp;&nbsp;&nbsp;同(한가지
				동)&nbsp;&nbsp;&nbsp;年(해 년)
			</label>
			<%
				writer.printf("5번 문제 : 一(한 일)<br>");
						}

						if (five_t.equals("o")) {
							grade += 5;
						} else {
			%>
			<%
				if (five.equals("o")) {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 도랑치고 가재잡고 一石二鳥(일석이조)다</h3>
			</label>
			<%
				}
			%>
			<br> <label style="color: #BDBDBD"> A2. 祖(할아비
				조)&nbsp;&nbsp;&nbsp;兆(조 조)&nbsp;&nbsp;&nbsp;<label
				style="color: black; font-weight: bold">鳥(새 조)</label>&nbsp;&nbsp;&nbsp;島(섬
				도)&nbsp;&nbsp;&nbsp;烏(까마귀 오)
			</label> <br> <br> <br>
			<%
				writer.printf("5-2번 문제 : 鳥(새 조)<br>");
						}

						if (six.equals("o")) {
							grade += 5;
						} else {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 苦盡甘來(고진감래)는 고생끝에 낙이온다는 뜻이다.</h3> A1. 古(옛
				고)&nbsp;&nbsp;&nbsp;告(고할 고)&nbsp;&nbsp;&nbsp;高(높을
				고)&nbsp;&nbsp;&nbsp;藥(약 약)&nbsp;&nbsp;&nbsp;<label
				style="color: black; font-weight: bold">苦(쓸 고)</label>
			</label>
			<%
				writer.printf("6번 문제 : 苦(쓸 고)<br>");
						}

						if (six_t.equals("o")) {
							grade += 5;
						} else {
			%>
			<%
				if (six.equals("o")) {
			%>
			<label style="color: #BDBDBD">
				<h3>Q. 苦盡甘來(고진감래)는 고생끝에 낙이온다는 뜻이다.</h3> <%
 	}
 %> <br> <label style="color: #BDBDBD"> A2. 感(느낄
					감)&nbsp;&nbsp;&nbsp;<label style="color: black; font-weight: bold">甘(달
						감)</label>&nbsp;&nbsp;&nbsp;監(볼 감)&nbsp;&nbsp;&nbsp;甛(달
					첨)&nbsp;&nbsp;&nbsp;日(날 일)
			</label> <br> <br> <br> <%
 	writer.printf("6-2번 문제 : 甘(달 감)<br>");
 			}

 			if (seven.equals("o")) {
 				grade += 10;
 			} else {
 %> <label style="color: #BDBDBD">
					<h3>Q. 水路(수로)는 물이 흐르도록 만들어 놓은 길이다.</h3> A. 勞(일할
					로)&nbsp;&nbsp;&nbsp;老(늙을 로)&nbsp;&nbsp;&nbsp;露(이슬
					로)&nbsp;&nbsp;&nbsp;<label style="color: black; font-weight: bold">路(길
						로)</label>&nbsp;&nbsp;&nbsp;道(길 도)
			</label> <br> <br> <%
 	writer.printf("7번 문제 : 路(길 로)<br>");
 			}

 			if (eight.equals("o")) {
 				grade += 10;
 			} else {
 %> <label style="color: #BDBDBD">
					<h3>Q. 확실히 맞힐 수 있는 문제였는데 마지막 分數(분수) 계산에서 분모와 분자를 헷갈려서 틀렸다.</h3> A.
					水(물 수)&nbsp;&nbsp;&nbsp;<label
					style="color: black; font-weight: bold">數(셈 수)</label>&nbsp;&nbsp;&nbsp;首(갈
					감)&nbsp;&nbsp;&nbsp;樹(나무 수)&nbsp;&nbsp;&nbsp;算(셈 산)
			</label> <br> <br> <%
 	writer.printf("8번 문제 : 數(셈 수)<br>");
 			}

 			if (nine.equals("o")) {
 				grade += 5;
 			} else {
 %> <label style="color: #BDBDBD">
					<h3>Q. 수행평가가 있는데 雪上加霜(설상가상) 내일 쪽지시험이다.</h3> A1. 鼻(코
					비)&nbsp;&nbsp;&nbsp;說(말씀 설)&nbsp;&nbsp;&nbsp;設(베풀
					설)&nbsp;&nbsp;&nbsp;舌(혀 설)&nbsp;&nbsp;&nbsp;<label
					style="color: black; font-weight: bold">雪(눈 설)</label>
			</label> <%
 	writer.printf("9번 문제 : 雪(눈 설)<br>");
 			}

 			if (nine_t.equals("o")) {
 				grade += 5;
 			} else {
 %> <%
 	if (nine.equals("o")) {
 %> <label style="color: #BDBDBD">
					<h3>Q. 수행평가가 있는데 雪上加霜(설상가상) 내일 쪽지시험이다.</h3>
			</label> <%
 	}
 %> <br> <label style="color: #BDBDBD"> A2. 雪(눈
					설)&nbsp;&nbsp;&nbsp;雨(비 우)&nbsp;&nbsp;&nbsp;<label
					style="color: black; font-weight: bold">霜(서리 상)</label>&nbsp;&nbsp;&nbsp;上(위
					상)&nbsp;&nbsp;&nbsp;賞(상줄 상)
			</label> <br> <br> <br> <%
 	writer.printf("9-2번 문제 : 霜(서리 상)<br>");
 			}

 			if (ten.equals("o")) {
 				grade += 10;
 			} else {
 %> <label style="color: #BDBDBD">
					<h3>Q. 친구랑 電話(전화)하다 1시간이 지났다.</h3> A. <label
					style="color: black; font-weight: bold">電(번개 전)</label>&nbsp;&nbsp;&nbsp;雨(비
					우)&nbsp;&nbsp;&nbsp;雪(눈 설)&nbsp;&nbsp;&nbsp;露(이슬
					로)&nbsp;&nbsp;&nbsp;氷(얼음 빙)
			</label> <br> <br> <%
 	writer.printf("10번 문제 : 電(번개 전)<br>");
 			}
 %>
				<div style="margin-top: 30px; margin-bottom: 30px">
					<h2>
						<%
							out.println("당신의 총 점수는 " + grade + "점입니다");
						%>
					</h2>
				</div> <%
 	writer.printf("<br>점수 : %s %n<br>", grade);

 			writer.flush();
 			result = "ok";
 		} else {
 			out.println("오류발생");
 			result = "fail1";
 		}

 	} catch (Exception e) {
 		out.println("오류발생");
 		result = "fail";
 	}

 	response.sendRedirect("result.jsp?send=" + c_count + "&result=" + result);
 %>

				<form method="post" action="mylist.jsp" name="sendform">
					<input type="submit" value="저장하기" class="button">
				</form>
		</div>
	</center>
</body>
</html>