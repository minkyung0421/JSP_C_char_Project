<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="paint.css">

<script src="//code.jquery.com/jquery.min.js"></script>
</head>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
%>
<body>
	<div style="font-family: NANUMBARUNGOTHICLIGHT;">
		<center>
			<h1>
				<div style="margin-top: 50px; margin-bottom: 50px">
					<label style="color: #1AAB8A;">그림</label>으로 <label
						style="color: #1AAB8A;">한자</label>학습하기
				</div>
			</h1>
			<table width=1300px height=0px class="mytable">
				<tr>
					<td class="han">校</td>
					<td class="han">敎</td>
					<td class="han">九</td>
					<td class="han">國</td>
					<td class="han">軍</td>
					<td class="han">金</td>
					<td class="han">南</td>
					<td class="han">女</td>
					<td class="han">年</td>
					<td class="han">大</td>
				</tr>
				<tr>
					<td class="gle">학교 교</td>
					<td class="gle">가르칠 교</td>
					<td class="gle">아홉 구</td>
					<td class="gle">나라 국</td>
					<td class="gle">군사 군</td>
					<td class="gle">쇠 금</td>
					<td class="gle">남녘 남</td>
					<td class="gle">여자 녀</td>
					<td class="gle">해 년</td>
					<td class="gle">큰 대</td>
				</tr>
				<tr>
					<td class="han">東</td>
					<td class="han">六</td>
					<td class="han">萬</td>
					<td class="han">母</td>
					<td class="han">木</td>
					<td class="han">門</td>
					<td class="han">民</td>
					<td class="han">北</td>
					<td class="han">白</td>
					<td class="han">父</td>
				</tr>
				<tr>
					<td class="gle">동녘 동</td>
					<td class="gle">여섯 육</td>
					<td class="gle">일만 만</td>
					<td class="gle">어미 모</td>
					<td class="gle">나무 목</td>
					<td class="gle">문 문</td>
					<td class="gle">백성 민</td>
					<td class="gle">북녘 북</td>
					<td class="gle">흰 백</td>
					<td class="gle">아비 부</td>
				</tr>
				<tr>
					<td class="han">四</td>
					<td class="han">韓</td>
					<td class="han">人</td>
					<td class="han">外</td>
					<td class="han">王</td>
					<td class="han">弟</td>
					<td class="han">水</td>
					<td class="han">西</td>
					<td class="han">先</td>
					<td class="han">學</td>
				</tr>
				<tr>
					<td class="gle">넉 사</td>
					<td class="gle">나라이름 한</td>
					<td class="gle">사람 인</td>
					<td class="gle">바깥 외</td>
					<td class="gle">왕 왕</td>
					<td class="gle">아우 제</td>
					<td class="gle">물 수</td>
					<td class="gle">서녘 서</td>
					<td class="gle">먼저 선</td>
					<td class="gle">배울 학</td>
				</tr>
				<tr>
					<td class="han">二</td>
					<td class="han">日</td>
					<td class="han">一</td>
					<td class="han">長</td>
					<td class="han">中</td>
					<td class="han">靑</td>
					<td class="han">寸</td>
					<td class="han">七</td>
					<td class="han">土</td>
					<td class="han">八</td>
				</tr>
				<tr>
					<td class="gle">두 이</td>
					<td class="gle">날 일</td>
					<td class="gle">한 일</td>
					<td class="gle">길 장</td>
					<td class="gle">가운데 중</td>
					<td class="gle">푸를 청</td>
					<td class="gle">마디 촌</td>
					<td class="gle">일곱 칠</td>
					<td class="gle">흙 토</td>
					<td class="gle">여덟 팔</td>
				</tr>
				<tr>
					<td class="han">口</td>
					<td class="han">同</td>
					<td class="han">來</td>
					<td class="han">老</td>
					<td class="han">算</td>
					<td class="han">主</td>
					<td class="han">天</td>
					<td class="han">祖</td>
					<td class="han">夫</td>
					<td class="han">歌</td>
				</tr>
				<tr>
					<td class="gle">입 구</td>
					<td class="gle">한가지 동</td>
					<td class="gle">올 래</td>
					<td class="gle">늙을 로</td>
					<td class="gle">셈 산</td>
					<td class="gle">주인 주</td>
					<td class="gle">하늘 천</td>
					<td class="gle">할아비 조</td>
					<td class="gle">지아비 부</td>
					<td class="gle">노래 가</td>
				</tr>
			</table>
		</center>

		<script>
			$(document).ready(
					function() {

						var drawCanvas = document.getElementById('drawCanvas');

						var drawBackup = new Array();

						if (typeof drawCanvas.getContext == 'function') {

							var ctx = drawCanvas.getContext('2d');

							var isDraw = false;

							var width = $('#width').val();
							;

							var color = $('#color').val();

							var pDraw = $('#drawCanvas').offset();

							var currP = null;

							$('#width').bind('change', function() {
								width = $('#width').val();
							});

							$('#color').bind('change', function() {
								color = $('#color').val();
							});

							// 저장된 이미지 호출

							if (localStorage['imgCanvas']) {

								loadImage();

							} else {

								ctx.clearRect(0, 0, drawCanvas.width,
										drawCanvas.height);

							}

							// Event (마우스)

							$('#drawCanvas').bind('mousedown', function(e) {

								if (e.button === 0) {

									saveCanvas();

									e.preventDefault();

									ctx.beginPath();

									isDraw = true;

								}

							});

							$('#drawCanvas').bind('mousemove', function(e) {

								var event = e.originalEvent;

								e.preventDefault();

								currP = {
									X : event.offsetX,
									Y : event.offsetY
								};

								if (isDraw)
									draw_line(currP);

							});

							$('#drawCanvas').bind('mouseup', function(e) {

								e.preventDefault();

								isDraw = false;

							});

							$('#drawCanvas').bind('mouseleave', function(e) {

								isDraw = false;

							});

							// Event (터치스크린)

							$('#drawCanvas').bind('touchstart', function(e) {

								saveCanvas();

								e.preventDefault();

								ctx.beginPath();

							});

							$('#drawCanvas').bind('touchmove', function(e) {

								var event = e.originalEvent;

								e.preventDefault();

								currP = {
									X : event.touches[0].pageX - pDraw.left,
									Y : event.touches[0].pageY - pDraw.top
								};

								draw_line(currP);

							});

							$('#drawCanvas').bind('touchend', function(e) {

								e.preventDefault();

							});

							// 선 그리기

							function draw_line(p) {

								ctx.lineWidth = width;

								ctx.lineCap = 'round';

								ctx.lineTo(p.X, p.Y);

								ctx.moveTo(p.X, p.Y);

								ctx.strokeStyle = color;

								ctx.stroke();

							}

							function loadImage() { // reload from localStorage

								var img = new Image();

								img.onload = function() {

									ctx.drawImage(img, 0, 0);

								}

								img.src = localStorage.getItem('imgCanvas');

							}

							function saveImage() { // save to localStorage

								var canvas = document
										.getElementById('drawCanvas');

								localStorage.setItem('imgCanvas', canvas
										.toDataURL('image/png'));

								var img = document.getElementById('saveImg');

								img.src = canvas.toDataURL('image/png');

								var tmp = $('<a>').attr('download', 'test.png')
										.attr('href', img.src);

								tmp[0].click();

								tmp.remove();

							}

							function clearCanvas() {

								ctx.clearRect(0, 0, drawCanvas.width,
										drawCanvas.height);

								ctx.beginPath();

								localStorage.removeItem('imgCanvas');

							}

							function saveCanvas() {

								drawBackup.push(ctx.getImageData(0, 0,
										drawCanvas.width, drawCanvas.height));

							}

							function prevCanvas() {

								ctx.putImageData(drawBackup.pop(), 0, 0);

							}

							$('#btnPrev').click(function() {

								prevCanvas();

							});

							$('#btnClea').click(function() {

								clearCanvas();

							});

							$('#btnSave').click(function() {

								saveImage();

							});

						}

					});
		</script>

		<center>

			<h1>
				<div style="margin-top: 50px; margin-bottom: 50px">
					<label style="color: #1AAB8A;">한자</label>써보기
				</div>
			</h1>

			<div align="center" style="margin-bottom: 20px">

				<select id="width" style="margin-right: 30px">
					<option value="1">1px</option>
					<option value="2">2px</option>
					<option value="3" selected>3px</option>
					<option value="5">5px</option>
					<option value="10">10px</option>
					<option value="20">20px</option>
				</select> <select id="color">
					<option value="#000000">검정</option>
					<option value="#FF0000">빨강</option>
					<option value="#D0A9F5">보라</option>
					<option value="#0000FF">파랑</option>
				</select>
			</div>
	</div>

	<div align="center">

		<canvas id="drawCanvas" width="800" height="600"
			style="border:1px solid #000000;">Canvas not supported</canvas>

	</div>


	<img id="saveImg" src="" style="display: none;" />

	<div align="center" style="margin-top: 30px; margin-bottom: 100px">
		<button id="btnPrev" class="button">되돌리기</button>
		<button id="btnClea" class="button">초기화</button>
		<button id="btnSave" class="button">다운로드</button>
	</div>
	</center>

</body>
</html>