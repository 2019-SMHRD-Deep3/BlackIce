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
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/logincss.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script src="assets/js/jquery-3.4.1.min.js"></script>
<style>
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

@keyframes wrapper { 
	0% {
		opacity:0;
	}
    100%{
        opacity:100%;
    }
}

</style>
</head>

<body class="is-preload">
	<div id="wrapper">
		<div id="bg"></div>
		<div id="overlay"></div>
		<div id="main">


			<!-- Login -->
			<div class="login-wrap" style="position: absolute; top: 15%; left: 50%; transform: translateX(-50%);">
				<div class="login-html">
					<input id="tab-1" type="radio" name="tab" class="sign-in" checked> <label for="tab-1" class="tab"><b>Sign In</b></b></label> <input id="tab-2" type="radio" name="tab" class="for-pwd"> <label for="tab-2" class="tab"><b>Sign Up</b></label>
					<div class="login-form">
						<div class="sign-in-htm">
							<br> <br>
							<form action="LoginService.do" method="post">
								<div class="group">
									<label for="user" class="label">Email</label> <input name="email" id="user" type="text" class="input">
								</div>
								<br> <br>
								<div class="group">
									<label for="pass" class="label">Password</label> <input name="pw" id="pass" type="password" class="input" data-type="password">
								</div>
								<br> <br> <br>
								<div class="group">
									<input type="submit" class="button" value="Sign In">
								</div>


								


								<div class="hr"></div>
							</form>
						</div>
						<div class="for-pwd-htm">
							<form action="JoinService.do" method="post">
								<div class="group">
									<label for="user" class="label">Name</label> <input name="name" id="user" type="text" class="input">
								</div>
								<div class="group">
									<label for="user" class="label">Email</label> <input name="email" id="user" type="text" class="input">
								</div>
								<div class="group">
									<label for="user" class="label">Password</label> <input name="pw" id="user" type="text" class="input">
								</div>
								<div class="group">
									<label for="user" class="label">Phone Number</label> <input name="tel" id="user" type="text" class="input">
								</div>
								<br>
								<div class="group">
									<input type="submit" class="button" value="Sign Up">
								</div>

											
								<div class="hr"></div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Header -->


			<!-- Footer -->
			<footer id="footer">
				<span class="copyright">&copy; Road safety accident<ahref="http://html5up.net"> </a></span>
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