<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@font-face { font-family: 'NANUMBARUNGOTHICLIGHT'; src: url(font/NANUMBARUNGOTHICLIGHT.TTF) format('truetype'); } 

body{
		padding: 0px;
		margin:0px;
	}
	
	input{
		font-size:35pt;
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
	
</style>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
%>

<script>


</script>
</head>
<body>
<center>
<form method = "post" action = "cstory_result.jsp">
<div style = "font-family: NANUMBARUNGOTHICLIGHT;">
<h1><div style = "margin-top:50px; margin-bottom: 50px"><label style = "color: #1AAB8A;">이야기</label>로 <label style = "color: #1AAB8A;">한자</label>학습하기</div></h1>
	<table border = 0>
		<tr>
			<td>
				<h3>Q. 교문 앞에 서 계시는 저 女___(여자)분이 우리 담임 선생님이시다. </h3>
			</td>
		</tr>
		<tr>
			<td>
				<input type = "radio" name = "one" value = "x">字
				<input type = "radio" name = "one" value = "x">者
				<input type = "radio" name = "one" value = "x">先
				<input type = "radio" name = "one" value = "x">生
				<input type = "radio" name = "one" value = "o" style = "margin-bottom:20px;">子
			</td>
		</tr>
	 	<tr>
			<td>
				<h3>Q. 우리 (1)___(2)___(부자)는 주말에 함께 운동을 한다.</h3>
			</td>
		</tr>
		<tr>
			<td>(1)
				<input type = "radio" name = "two" value = "o">父
				<input type = "radio" name = "two" value = "x">母
				<input type = "radio" name = "two" value = "x">弟
				<input type = "radio" name = "two" value = "x">兄
				<input type = "radio" name = "two" value = "x">祖
			</td>
		</tr>
		<tr>
			<td>(2)
				<input type = "radio" name = "two_t" value = "x">父
				<input type = "radio" name = "two_t" value = "x">母
				<input type = "radio" name = "two_t" value = "o">子
				<input type = "radio" name = "two_t" value = "x">天
				<input type = "radio" name = "two_t" value = "x" style = "margin-bottom:20px;">足
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. 어머니께서는 백화점에서 아동용 여름 (1)___(2)___(내의)와 음식을 사오셨다.</h3>
			</td>
		</tr>
		<tr>
			<td>(1)
				<input type = "radio" name = "three" value = "x">來
				<input type = "radio" name = "three" value = "x">江
				<input type = "radio" name = "three" value = "o">內
				<input type = "radio" name = "three" value = "x">安
				<input type = "radio" name = "three" value = "x">西
			</td>
		</tr>
		<tr>
			<td>(2)
				<input type = "radio" name = "three_t" value = "x">意
				<input type = "radio" name = "three_t" value = "o">衣
				<input type = "radio" name = "three_t" value = "x">義
				<input type = "radio" name = "three_t" value = "x">服
				<input type = "radio" name = "three_t" value = "x" style = "margin-bottom:20px;">兒
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. ___子(왕자)는 부모님이 편찮으시다는 소식을 듣고 왕궁을 향해 달려갔다.</h3>
			</td>
		</tr>
		<tr>
			<td>
				<input type = "radio" name = "four" value = "x">往
				<input type = "radio" name = "four" value = "x">旺
				<input type = "radio" name = "four" value = "x">主
				<input type = "radio" name = "four" value = "o">王
				<input type = "radio" name = "four" value = "x" style = "margin-bottom:20px;">正
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. 도랑치고 가재잡고 (1)___石二(2)___(일석이조)다</h3>
			</td>
		</tr>
		<tr>
			<td>(1)
				<input type = "radio" name = "five" value = "o">一
				<input type = "radio" name = "five" value = "x">日
				<input type = "radio" name = "five" value = "x">逸
				<input type = "radio" name = "five" value = "x">同
				<input type = "radio" name = "five" value = "x">年
			</td>
		</tr>
		<tr>
			<td>(2)
				<input type = "radio" name = "five_t" value = "x">祖
				<input type = "radio" name = "five_t" value = "x">兆
				<input type = "radio" name = "five_t" value = "o">鳥
				<input type = "radio" name = "five_t" value = "x">島
				<input type = "radio" name = "five_t" value = "x" style = "margin-bottom:20px;">烏
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. (1)___盡(2)___來(고진감래)는 고생끝에 낙이온다는 뜻이다.</h3>
			</td>
		</tr>
		<tr>
			<td>(1)
				<input type = "radio" name = "six" value = "x">古
				<input type = "radio" name = "six" value = "x">告
				<input type = "radio" name = "six" value = "x">高
				<input type = "radio" name = "six" value = "x">藥
				<input type = "radio" name = "six" value = "o">苦
			</td>
		</tr>
		<tr>
			<td>(2)
				<input type = "radio" name = "six_t" value = "x">感
				<input type = "radio" name = "six_t" value = "o">甘
				<input type = "radio" name = "six_t" value = "x">監
				<input type = "radio" name = "six_t" value = "x">甛
				<input type = "radio" name = "six_t" value = "x" style = "margin-bottom:20px;">日
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. 水___(수로)는 물이 흐르도록 만들어 놓은 길이다.</h3>
			</td>
		</tr>
		<tr>
			<td>
				<input type = "radio" name = "seven" value = "x">勞
				<input type = "radio" name = "seven" value = "x">老
				<input type = "radio" name = "seven" value = "x">露
				<input type = "radio" name = "seven" value = "o">路
				<input type = "radio" name = "seven" value = "x" style = "margin-bottom:20px;">道
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. 확실히 맞힐 수 있는 문제였는데 마지막 分___(분수) 계산에서 분모와 분자를 헷갈려서 틀렸다.</h3>
			</td>
		</tr>
		<tr>
			<td>
				<input type = "radio" name = "eight" value = "x">水
				<input type = "radio" name = "eight" value = "o">數
				<input type = "radio" name = "eight" value = "x">首
				<input type = "radio" name = "eight" value = "x">樹
				<input type = "radio" name = "eight" value = "x" style = "margin-bottom:20px;">算
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. 수행평가가 있는데 (1)___上加(2)___(설상가상) 내일 쪽지시험이다.</h3>
			</td>
		</tr>
		<tr>
			<td>(1)
				<input type = "radio" name = "nine" value = "x">鼻
				<input type = "radio" name = "nine" value = "x">說
				<input type = "radio" name = "nine" value = "x">設
				<input type = "radio" name = "nine" value = "x">舌
				<input type = "radio" name = "nine" value = "o">雪
			</td>
		</tr>
		<tr>
			<td>(2)
				<input type = "radio" name = "nine_t" value = "x">雪
				<input type = "radio" name = "nine_t" value = "x">雨
				<input type = "radio" name = "nine_t" value = "o">霜
				<input type = "radio" name = "nine_t" value = "x">上
				<input type = "radio" name = "nine_t" value = "x" style = "margin-bottom:20px;">賞
			</td>
		</tr>
		<tr>
			<td>
				<h3>Q. 친구랑 ___話(전화)하다 1시간이 지났다.</h3>
			</td>
		</tr>
		<tr>
			<td>
				<input type = "radio" name = "ten" value = "o">電
				<input type = "radio" name = "ten" value = "x">雨
				<input type = "radio" name = "ten" value = "x">雪
				<input type = "radio" name = "ten" value = "x">露
				<input type = "radio" name = "ten" value = "x" style = "margin-bottom:60px;">氷
			</td>
		</tr>
		<tr>
	</table>
	<input type = "submit" value = "결과보기" class = "button" style = "margin-bottom:30px;">
	</div>
	</form>
	</center>
</body>
</html>