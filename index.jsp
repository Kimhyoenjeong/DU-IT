<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html><head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>morae</title>

	<style>
	/* 브라우저 마진과 패딩 리셋 */
	* {margin:0;padding:0;}
	
	/* INPUT 가리기 */
	.section input[id*="slide"] {display:none;}

	/* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
	.section .slidewrap {max-width:1200px;margin:0 auto;overflow:hidden;}
	.section .slidelist {white-space:nowrap;font-size:0;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative;overflow:hidden;} /* 화살표 화면 밖으로 나가면 안보이도록 OVERFLOW로 가림처리 */
	.section .slidelist > li > a img {width:100%;}

	/* 좌우로 넘기는 LABEL버튼에 대한 스타일 */
	.section .slidelist label {position:absolute;z-index:1;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {left:-300px;background:url('./img/left.png') center center / 100% no-repeat;} /* LEFT -300px로 화살표가 안보이게 되어있도록 준 스타일 */
	.section .slidelist .right {right:-300px;background:url('./img/right.png') center center / 100% no-repeat;} /* RIGHT -300px로 화살표가 안보이게 되어있도록 준 스타일 */

	/* INPUT이 체크되면 변화값이 li까지 전달되는 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}

	/* INPUT이 체크되면 변화값이 LEFT,RIGHT에 전달되는 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .left {left:30px;transition:all .35s ease .5s;} /* 1번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .left:hover {left:30px;transition:all .35s ease .5s; opacity: 0.5;}
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .right {right:30px;transition:all .35s ease .5s;} /* 1번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .right:hover {right:30px;transition:all .35s ease .5s; opacity: 0.5;}
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .left {left:30px;transition:all .35s ease .5s;} /* 2번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .left:hover {left:30px;transition:all .35s ease .5s; opacity: 0.5;}
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .right {right:30px;transition:all .35s ease .5s;} /* 2번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .right:hover {right:30px;transition:all .35s ease .5s; opacity: 0.5;}
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .left {left:30px;transition:all .35s ease .5s;} /* 3번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .left:hover {left:30px;transition:all .35s ease .5s; opacity: 0.5;}
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .right {right:30px;transition:all .35s ease .5s;} /* 3번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .right:hover {right:30px;transition:all .35s ease .5s; opacity: 0.5;}
	
	input[id="menuicon"] {display:none;}

/* 헤더 */
header {width:100%;background:#aaa;}
header > div {position:relative;width:1200px;height:80px;margin:0 auto;}

/* 각영역의 라벨(중앙정렬) */
.area_desc {position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);font-size:20px;}
.area_left ul {list-style:none;margin:0;padding:0;}
.area_left ul li a{position:relative;float: left;margin:0px 20px;margin-top:30px; text-decoration:none; font-size:25px; color:white;font-weight:bold;}
.area_left ul li a:hover{position:relative;float: left;margin:0px 20px;margin-top:30px; text-decoration:none; font-size:25px; color:white;font-weight:bold; opacity: 0.5;} 

/* 메뉴버튼 */
.menubtn {display:block;width:50px;height:50px;position:absolute;top:50%;right:10px;transform:translateY(-50%);cursor:pointer;}
.menubtn span {display:block;position:absolute;width:80%;height:5px;border-radius:30px;background:#222;transition:all .35s;}
.menubtn span:nth-child(1) {top:20%;left:50%;transform:translateX(-50%);}
.menubtn span:nth-child(2) {top:50%;left:50%;transform:translate(-50%,-50%);} 
.menubtn span:nth-child(3) {bottom:20%;left:50%;transform:translateX(-50%);}

/* 컨텐츠영역 */
.container {width:100%;height:100%;position:relative;}
.container .content1 {width:1200px;margin:0 auto;height:100%;border:1px solid #eee;background:#f1f1f1;}
.container .sidebar {position:fixed;top:0;right:-300px;width:300px;height:100%;background:#666;z-index:30;transition:.35s;}

/* 체크 변화값 */
input[id="menuicon"]:checked ~ header .menubtn {z-index:2;}
input[id="menuicon"]:checked ~ header .menubtn span {background:#fff;}
input[id="menuicon"]:checked ~ header .menubtn span:nth-child(1) {top:50%;left:50%;transform:translate(-50%,-50%) rotate(135deg);}
input[id="menuicon"]:checked ~ header .menubtn span:nth-child(2) {left:50%;transform:translate(-50%,-50%) scale(2);opacity:0;}
input[id="menuicon"]:checked ~ header .menubtn span:nth-child(3) {bottom:50%;left:50%;transform:translate(-50%,50%) rotate(-135deg);}
input[id="menuicon"]:checked ~ .container .sidebar {right:0;}

.menubtn {background:url('./img/btn_bg.png') 0 0 no-repeat;}
input[id="menuicon"]:checked ~ header .menubtn {background:url('./img/btn_bg.png') -50px 0 no-repeat;}

hr { width:1200px; margin-left:360px;}
	
	</style>
</head>
<body>
	<input type="checkbox" id="menuicon">
	<header>
		<div>
			<div class="area_left">
				<ul>
					<li class="logo"><a href="#">모두의 레시피</a></li>
					<li><a href="#">menu1</a></li>
					<li><a href="#">menu2</a></li>
					<li><a href="#">menu3</a></li>
				</ul>
			<label for="menuicon" class="menubtn">
				<span></span>
				<span></span>
				<span></span>
			</label>
		</div>
	</header>
<div class="container"> 
	<div class="sidebar">
		<span class="area_desc">
		<h2 class="login_mark">로그인</h2>
				<ul>
					<input id="userId" type="text" placeholder="아이디" maxlength="20" autofocus required>
					<input id="userPassword" type="text" placeholder="비밀번호" maxlength="20" autofocus required>
					<input id="save_userId" type="checkbox">
					<a>아아디저장</a>
					<div class="btn">
					<button type="submit">로그인</button>
					</div>
					<li><a href="#">비밀번호 찾기</a></li>
					<li><a href="#">회원가입</a></li>
				</ul>
		</span>
	</div>
	<div class="section">
		<input type="radio" name="slide" id="slide01" checked="">
		<input type="radio" name="slide" id="slide02">
		<input type="radio" name="slide" id="slide03">

		<div class="slidewrap">
			<ul class="slidelist">
				<li>
					<a>
						<label for="slide03" class="left"></label>
						<img src="./img/slide01.jpg">
						<label for="slide02" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide01" class="left"></label>
						<img src="./img/slide02.jpg">
						<label for="slide03" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide02" class="left"></label>
						<img src="./img/slide03.jpg">
						<label for="slide01" class="right"></label>
					</a>
				</li>
			</ul>
		</div>
		<hr>
	</div>

	
</div>



</body></html>