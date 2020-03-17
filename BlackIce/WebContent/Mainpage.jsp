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
	top: -220px;
	right: -50px;
	font-size: 25px;
}

.search {
	position: absolute;
	top: 160%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 155px; /* 원 너비 */
	height: 155px; /* 원 높이*/
	background-color: #6fc0e3; /* 큰 원 색 */
	border: 8px solid white; /* 테두리 */
	border-radius: 75px;
	text-decoration: none;
	text-align: center; /* 텍스트 수평 중앙 */
	line-height: 145px; /* 텍스트 수직 중앙 */
	font-size: 25px;
	color: white; /* 글씨 색 */
	font-weight: bold;
	transition: .5s; /* 변환 시간 */
}

search:hover {
	color: red; /* 후버할때 색깔  */
}

search:before { /* 클릭시  */
	content: '';
	position: absolute; /*절대적 위치로 배치*/
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

.help-tip:hover p {
	display: block;
	transform-origin: 10% 0%;
	webkit-animation: fadeIn 0.3s ease-in-out;
	animation: fadeIn 0.3s ease-in-out;
}

.help-tip p { /* 말풍선 바디 */
	display: none;
	text-align: left;
	background-color: rgba(0, 0, 0, 0.3);
	/* padding: 30%;
 */
	width: 310px;
	height: 400px;
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

.help-tip p:before { /* 말풍선꼬리부분 */
	position: absolute;
	content: '';
	width: 0;
	height: 0;
	border: 3px solid transparent;
	border-bottom-color: rgba(0, 0, 0, 0.2);
	right: px;
	top: -13px;
}

.help-tip p:after {
	width: 50%;
	height: 40px;
	content: '';
	position: absolute;
	top: -10px;
	left: 0;
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
			<header id="header" style="top: -10%;">
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
				<h1>도로안전사고</h1>
				<br>
				<p style="font-size: 15px;">
					위험천만한 도로교통사고 미리 예측해드립니다<br>여러분의 안전을 책임져드리겠습니다<br>
				</p>
				<nav>
					<ul>
						<input type="text" name="name" class="Name" placeholder="출발">
						<input type="text" name="name" class="Name" placeholder="도착">
					</ul>
				</nav>

				<body>
					<a class=search href="#">위치 검색</a>
				</body>


			</header>

			<!-- Footer -->
			<footer id="footer">
				<span class="copyright">&copy; Road safety accident<ahref="http://html5up.net">
					</a></span>
			</footer>

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
			내가 가는 곳에 블랙아이스가 있을까?<br> 도로안전사고 방지를 위해 결빙 구간을 예측해드립니다.<br>
			출발지와 도착지를 입력해주세요.<br> <br> 내가 가는 곳에 블랙아이스가 있을까?<br>
			도로안전사고 방지를 위해 결빙 구간을 예측해드립니다.<br> 출발지와 도착지를 입력해주세요.<br> <br>
			내가 가는 곳에 블랙아이스가 있을까?<br> 도로안전사고 방지를 위해 결빙 구간을 예측해드립니다.<br>
			출발지와 도착지를 입력해주세요.<br> <br> 내가 가는 곳에 블랙아이스가 있을까?<br>
			도로안전사고 방지를 위해 결빙 구간을 예측해드립니다.<br> 출발지와 도착지를 입력해주세요.<br>
		</p>

	</div>



</body>
</html>