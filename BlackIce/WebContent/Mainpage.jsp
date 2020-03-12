<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Aerial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Aerial by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
.login {
	position: absolute;
	top: -220px;
	right: -10px;
	font-size: 30px;
}

/* .btn--shockwave.is-active[data-v-e2fcb7d8]:before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	border-radius: 50%;
	-webkit-animation: shockwave-data-v-e2fcb7d8 1s ease-out .5s infinite;
	animation: shockwave-data-v-e2fcb7d8 1s ease-out .5s infinite;
} */
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
					내가 가는 곳에 블랙아이스가 있을까? <br>블랙아이스 구간을 예측해드립니다!<br>
				</p>
				<nav>
					<ul>
						<input type="text" name="name" class="Name" placeholder="출발">
						<input type="text" name="name" class="Name" placeholder="도착">
					</ul>
				</nav>

				<div class="layer" style="position: absolute; top: 80%; left: 50%; width: 100px; margin: 200px 0 0 -60px;">
					<button data-v-e2fcb7d8="" class="btn btn--shockwave is-active" style="color: rgb(255, 255, 255); -webkit-text-fill-color: rgb(255, 255, 255);">
						<img data-v-e2fcb7d8="" src="assets/css/images/searchbutton.822d5585.png" class="searchbtn" style="position: absolute; width: 11rem; left: -30px; top: -60px"> "치 위치로 보기"
						<!--  -->
					</button>
				</div>
			</header>

			<!-- Footer -->
			<footer id="footer">
				<span class="copyright">&copy; Untitled. Design: <ahref="http://html5up.net">HTML5 UP</a></span>
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




</body>
</html>