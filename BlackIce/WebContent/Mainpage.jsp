<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<!--
	Aerial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Aerial by HTML5 UP</title>

<title>hover effect button</title>

<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html;">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />


<!-- <link rel="stylesheet" href="style.css"> -->

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
.login {
	position: absolute;
	top: -195px;
	right: -57px;
	font-size: 25px;
}

.search {
	
	position: absolute;
    top: 170%;
    left: 35%;
	transform: translate(-50%, -50%);
	width: 155px; /* 원 너비 */
	height: 155px; /* 원 높이*/
	background-color: gray; /* 큰 원 색 */
	border: 8px solid white; /* 테두리 */
	border-radius: 75px;
	text-decoration: none;
	text-align: center; /* 텍스트 수평 중앙 */
	line-height: 145px; /* 텍스트 수직 중앙 */
	font-size: 26px;
	color: white; /* 글씨 색 */
	font-weight: bold;
	transition: .5s; /* 변환 시간 */
}

search:hover {
	color: red; /* 후버할때 색깔  */
}

search:before { /* 클릭시  */
	content: '';
 
	top: -0.1%;
	left: -0.1%;
	border-radius: 75px; /* 클릭시 테두리 모서리  */
	background-color: #fff; /* 클릭시  배경색*/
	width: 101%;
	height: 101%;
	z-index: -1; /* 클릭시 배경색에 가리는 글씨 보이도록함 */
	transition: .5s; /* 변환 시간 */
	transform: scale(0);
}

search:hover:before {
	color: red; /* 후버시 텍스트 컬러*/
	transform: scale(1);
}
.search2 {
	
	
	position: absolute;
	top:170%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 155px; /* 원 너비 */
	height: 155px; /* 원 높이*/
	background-color: darkgray; /* 큰 원 색 */
	border: 8px solid white; /* 테두리 */
	border-radius: 75px;
	text-decoration: none;
	text-align: center; /* 텍스트 수평 중앙 */
	line-height: 145px; /* 텍스트 수직 중앙 */
	font-size: 27px;
	color: white; /* 글씨 색 */
	font-weight: bold;
	transition: .5s; /* 변환 시간 */
}

search2:hover {
	color: red; /* 후버할때 색깔  */
}

search2:before { /* 클릭시  */
	content: '';
	
	top: -0.1%;
	left: -0.1%;
	border-radius: 75px; /* 클릭시 테두리 모서리  */
	background-color: #fff; /* 클릭시  배경색*/
	width: 101%;
	height: 101%;
	z-index: -1; /* 클릭시 배경색에 가리는 글씨 보이도록함 */
	transition: .5s; /* 변환 시간 */
	transform: scale(0);
}

search2:hover:before {
	color: red; /* 후버시 텍스트 컬러*/
	transform: scale(1);
}
.search3 {
	
	
	position: absolute;
    top: 170%;
    right: 26%;
	transform: translate(-50%, -50%);
	width: 155px; /* 원 너비 */
	height: 155px; /* 원 높이*/
	background-color: lightslategray; /* 큰 원 색 */
	border: 8px solid white; /* 테두리 */
	border-radius: 75px;
	text-decoration: none;
	text-align: center; /* 텍스트 수평 중앙 */
	line-height: 145px; /* 텍스트 수직 중앙 */
	font-size: 27px;
	color: white; /* 글씨 색 */
	font-weight: bold;
	transition: .5s; /* 변환 시간 */
}

search3:hover {
	color: red; /* 후버할때 색깔  */
}

search3:before { /* 클릭시  */
	content: '';
	
	top: -0.1%;
	left: -0.1%;
	border-radius: 75px; /* 클릭시 테두리 모서리  */
	background-color: #fff; /* 클릭시  배경색*/
	width: 101%;
	height: 101%;
	z-index: -1; /* 클릭시 배경색에 가리는 글씨 보이도록함 */
	transition: .5s; /* 변환 시간 */
	transform: scale(0);
}

search3:hover:before {

	color: red; /* 후버시 텍스트 컬러*/
	transform: scale(1);
}

.help-tip { /* ?부분 */
	position: absolute;
	top: 40px;
	left: 30px;
	text-align: center;
	background-color: #BCDBEA;
	border-radius: 50%;
	width: 24px;
	height: 24px;
	font-size: 14px;
	line-height: 26px;
	cursor: default;
}

.help-tip:before {
	content: '?';
	font-weight: bold;
	color: #fff;
}

.help-tip:hover ul {
	display: block;
	transform-origin: 10% 0%;
	webkit-animation: fadeIn 0.3s ease-in-out;
	animation: fadeIn 0.3s ease-in-out;
}

.help-tip ul { /* 말풍선 바디 */
	display: none;
	text-align: left;
	background-color: rgba(0, 0, 0, 0.3);
	/* padding: 30%;
 */
	width: 330px;
	height: 310px;
	position: absolute;
	border-radius: 3px;
	box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
	right: -320px;
	top: -1px;
	color: #FFF;
	font-size: 13px;
	line-height: 1.4;
	color: #FFF;
	position: absolute;
}

.help-tip ul:before { /* 말풍선꼬리부분 */
	position: absolute;
	content: '';
	width: 0;
	height: 0;
	border: 3px solid transparent;
	border-bottom-color: rgba(0, 0, 0, 0.2);
	right: px;
	top: -13px;
}

.help-tip ul:after {
	width: 50%;
	height: 40px;
	content: '';
	position: absolute;
	top: -10px;
	left: 0;
}


.modal-body__text ul[data-v-cd86f34a] {
    -webkit-padding-start: 25px;
    padding-inline-start: 25px;
    width: 80%;
    margin:10px;
    margin-right:20px;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 30px;
}


.modal-body__text li[data-v-cd86f34a] {
    padding-bottom: 50px;
    text-align: left;
}
.modal-body__text li {
    line-height: 2;
}



@-webkit-keyframes fadeIn { 
	0% {
		opacity: 0;
		transform: scale(0.6);
	}
	
	100% {
		opacity:100%;
		transform:scale(1);
	}
}

@keyframes wrapper { 
	0% {
		opacity:0;
	}
    100%{
        opacity:100%;
    }
}

@-moz-keyframes mybg {
	0% {
		-moz-transform: translate3d(0, 0, 0);
		-webkit-transform: translate3d(0, 0, 0);
		-ms-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}
	100% {
		-moz-transform :translate3d(-2250px,0,0);
		-webkit-transform :translate3d(-2250px,0,0);
		-ms-transform :translate3d(-2250px,0,0);
		transform :translate3d(-2250px,0,0);
	}
}
@-webkit-keyframes mybg {
	0% {
		-moz-transform: translate3d(0, 0, 0);
		-webkit-transform: translate3d(0, 0, 0);
		-ms-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}
	100% {
		-moz-transform :translate3d(-2250px,0,0);
		-webkit-transform :translate3d(-2250px,0,0);
		-ms-transform :translate3d(-2250px,0,0);
		transform :translate3d(-2250px,0,0);
	}
}
@-ms-keyframes mybg {
	0% {
		-moz-transform: translate3d(0, 0, 0);
		-webkit-transform: translate3d(0, 0, 0);
		-ms-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}
	100% {
		-moz-transform :translate3d(-2250px,0,0);
		-webkit-transform :translate3d(-2250px,0,0);
		-ms-transform :translate3d(-2250px,0,0);
		transform :translate3d(-2250px,0,0);
	}
}
@keyframes mybg { 
	0% {
		-moz-transform: translate3d(0, 0, 0);
		-webkit-transform: translate3d(0, 0, 0);
		-ms-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}
	100% {
		-moz-transform :translate3d(-2250px,0,0);
		-webkit-transform :translate3d(-2250px,0,0);
		-ms-transform :translate3d(-2250px,0,0);
		transform :translate3d(-2250px,0,0);
	}
}


</style>
</head>

<body class="is-preload">

	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

	<div id="wrapper">
		<div id="bg"></div>
		<div id="overlay"></div>
		<div id="main">


			<!-- Login -->



			<!-- Header -->
			<header id="header" style="top: -15%;">
				<%
					System.out.println(info);
					if (info == null) {
				%>
				<a class=login href="/BlackIce/Login.jsp">LOGIN</a>
				<%
					} else {
				%>
				<a class=login href="#">LOGOUT</a>
				<%
					}
				%>
				
<!-- 				<h1 style = "margin-top: -63px;">세<h6 style = "margin-top: -63px;">이프</h6></h1>
				 -->
				
				
				<h1 style = "font-size:100px; display:inline-block;">세</h1>이프<h1 style = "font-size:100px; display:inline-block;">로</h1>드<h1 style = "font-size:100px; display:inline-block;">맵</h1>
				<br>
				<p style="font-size: 20px;">
					위험천만한 도로교통사고 미리 예측해드립니다<br>여러분의 안전을 책임져드리겠습니다<br>
				</p>
			
				<body>
					<div>
					<a class=search href="/BlackIce/Tmap1.html">결빙</a>
					<a class=search2 href="/BlackIce/Tmap2.html">포트홀</a>
					<a class=search3 href="/BlackIce/Tmap3.html">소성변형</a>
					</div>
				</body>
			
				
			</header>

			<!-- Footer -->
			
			<footer id="footer">
			
			</footer>
			<div style = "bottom: 30px; left: 1520px; font-size: 16px; position: absolute;">
			<div class="copyright" style = "position: fixed; padding: 38px; margin-left: 30px;">기획 및 개발  : 김준형,이보람,김희조,곽창혁</div><br>
			<div class="copyright" style = "position: fixed; padding: 19px; margin-left: 131px;"> 문의 사항  :  smhrd @ smhrd. or. kr</div><br>
			
			</div>
			
		
	</div>





	<script>
		window.onload = function() {
			document.body.classList.remove('is-preload');
		}
		window.ontouchmove = function() {
			return false;
		}
		window.onorientationchange = function() {
			document.body.scrollTop = 0;
		}
	</script>



	<div class="help-tip">

		<p>
			<ul data-v-cd86f34a=""><br><br>
<li data-v-cd86f34a="" style="font-size: 12.5px; opacity: 1;">
<strong data-v-cd86f34a="">예측 구간은 100% 정확할 순 없습니다. s예측 구간을 참고하여 도로안전사고에 유의해주시면 감사하겠습니다.</strong></li><br>
<li data-v-cd86f34a="" style="font-size: 12.5px; opacity: 1;"><strong data-v-cd86f34a=""> 문의사항이 있으신 분은 스마트 미디어 인재 개발원(smhrd@smhrd.or.kr)으로 보내주시길 바랍니다.</strong></li><br>
<li data-v-cd86f34a=""> 사이트를 이용해주신 모든분들께 감사드립니다. 여러분의 안전을 위해 많은 노력을 기울이겠습니다. 항상 많은 관심 부탁드립니다. </li><br>
<li data-v-cd86f34a=""> 세이프 로드 맵은  <br data-v-cd86f34a="">4명의 아이디어와 노력에 황해도,박병관,정형 연구원의 
<br data-v-cd86f34a="">데이터 기술 자문이 더해져 만들어졌습니다. </li></ul>
		</p>

	</div>






</body>
</html>