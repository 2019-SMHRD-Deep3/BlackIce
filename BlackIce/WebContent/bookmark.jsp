<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<style>

[_nghost-ecn-c90] .search_inner.valued[_ngcontent-ecn-c90] .icon_route.start[_ngcontent-ecn-c90] {
    border-color: #00c768;
}

[_nghost-ecn-c90] .search_inner.valued[_ngcontent-ecn-c90] .icon_route[_ngcontent-ecn-c90] {
    float: left;
    width: 6px;
    height: 6px;
    margin: 15px 0 0 13px;
    border: 1px solid #999;
    border-radius: 50%;
}
@font-face {
  font-family: 'Varela Round';
  font-style: normal;
  font-weight: 400;
  src: local('Varela Round Regular'), local('VarelaRound-Regular'), url(https://fonts.gstatic.com/s/varelaround/v12/w8gdH283Tvk__Lua32TysjIfp8uK.ttf) format('truetype');
}
* {
  box-sizing: border-box;
}

/* �� ���� - ���� */

:root {
  --accent-color: #45494E;
  --gradient-color: #FBFBFB;
}
a:focus {
  outline: none;
  position: relative;
}
a:focus:after {
  width: 50px;
}
a:after {
  content: "";
  /* background: #FBFBFB; */
  position: absolute;
  bottom: 5px;
  left: 15px;
  height: 3px;
  width: 0;
  transition: 0.5s;
  transition-delay: 0.2s;
}
body {
  font-family: "Varela Round", Nunito, Montserrat, sans-serif;
  margin: 0;
  padding: 0;
  text-transform: capitalize;
}
.menu {
  margin: 15px;
}
.menu > ol {
  list-style: none;
  padding: 0;
}
.menu > ol > li {
  background: #3c3c3c;
  border-left: 5px solid var(--gradient-color);
  margin-bottom: 1px;
  position: relative;
  transition: 0.5s;
  
}

/* ���� ���� �޴��� ���� */

.menu > ol > li:nth-child(1) {
  --accent-color: #FDA085;
  --gradient-color: #F6D365;
}
.menu > ol > li:nth-child(2) {
  --accent-color: #BFF098;
  --gradient-color: #6FD6FF;
}
.menu > ol > li:nth-child(3) {
  --accent-color: #EA8D8D;
  --gradient-color: #A890FE;
}
.menu > ol > li:nth-child(4) {
  --accent-color: #D8B5FF;
  --gradient-color: #1EAE98;
}
.menu > ol > li:nth-child(5) {
  --accent-color: #C6EA8D;
  --gradient-color: #FE90AF;
}
.menu > ol > li:nth-child(6) {
  --accent-color: #DDD600;
  --gradient-color: #FE90AF;
}

.menu > ol > li:nth-child(7) {
  --accent-color: #D8B5FF;
  --gradient-color: #1EAE98;
}



.menu > ol > li a {
  color: #FBFBFB;
  display: block;
  padding: 15px;
  position: relative;
  text-decoration: none;
  z-index: 1;
}
.menu > ol > li a:not(:last-child):before {
  content: "\f078";
  font-family: fontAwesome;
  font-size: 0.75em;
  line-height: 50px;
  position: absolute;
  right: 25px;
  top: 0;
  bottom: 0;
  margin: auto;
  transition: 0.5s;
}
.menu > ol > li:focus,
.menu > ol > li:focus-within,
.menu > ol > li:hover {
  z-index: 100;
}
.menu > ol > li:focus:after,
.menu > ol > li:focus-within:after,
.menu > ol > li:hover:after {
  background: linear-gradient(to left, var(--accent-color), var(--gradient-color));
  max-width: 800px;
}
.menu > ol > li:focus .sub-menu,
.menu > ol > li:focus-within .sub-menu {
  max-height: 500px;
}
.menu > ol > li:focus a:before,
.menu > ol > li:focus-within a:before {
  transform: rotate(-180deg);
}
.menu > ol > li:after {
  background: #3c3c3c;
  content: "";
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  transition: 0.5s;
  max-width: 0;
  overflow: hidden;
}
.menu > ol .sub-menu {
  border-left: 1px solid #FBFBFB;
  margin-left: 22.5px;
  list-style: none;
  max-height: 0px;
  overflow: hidden;
  padding-left: 7.5px;
  position: relative;
  transition: 0.5s;
  z-index: 1;
}
.menu > ol .sub-menu li {
  font-size: 0.9em;
}
.menu > ol .sub-menu li:hover,
.menu > ol .sub-menu li a:focus {
  background: rgba(60, 60, 60, 0.3);
}
.menu > ol .sub-menu li a:after {
  bottom: 5px;
  height: 1px;
}
.menu > ol .sub-menu li a:hover:after,
.menu > ol .sub-menu li a:focus:after {
  width: 15px;
}
@media (min-width: 600px) {
  a:focus,
  a:hover {
    position: relative;
  }
  a:focus:after,
  a:hover:after {
    width: 50px;
  }
  a:after {
    left: 0;
    right: 0;
    margin: auto;
  }
  .menu {
    margin: 0;
    margin-left:-10%;
  }
  .menu > ol {
    display: block;
    max-width: none;
    text-align: right;
  }
  .menu > ol > li {
    border-top: 5px solid var(--accent-color);
    border-left: 0;
    display: inline-block;
    margin-left: -5px;
    vertical-align: top;
    width: 120px;
  }
  .menu > ol > li:hover:after,
  .menu > ol > li:focus:after,
  .menu > ol > li:focus-within:after {
    background: linear-gradient(to bottom, var(--accent-color), var(--gradient-color));
    border-radius: 3px;
    top: -15px;
    bottom: -15px;
    left: -15px;
    right: -15px;
  }
  .menu > ol > li:hover .sub-menu,
  .menu > ol > li:focus .sub-menu,
  .menu > ol > li:focus-within .sub-menu {
    max-height: 750px;
  }
  .menu > ol > li a:not(:last-child):before {
    right: 12.5px;
  }
  .menu > ol > li:hover a:before {
    transform: rotate(-180deg);
  }
  .menu > ol .sub-menu {
    border-left: 0;
    margin: 15px -15px -15px;
    padding-left: 0;
  }
}
@media (min-width: 775px) {
  .menu > ol > li {
    width: 275px;
  }
  .menu > ol > li a:not(:last-child):before {
    right: 25px;
  }
}

</style>

<nav class="menu" style="width: 1665px;">
  <ol style="margin-bottom:0px; width:126.7%; font-size:19px; margin-top:0px;" >
	<li class="menu-item"><a href="/BlackIce/Mainpage.jsp" align="center"><b>����</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Tmap1.html" align="center"><b>���</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Tmap2.html" align="center"><b>��ƮȦ</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Tmap3.html" align="center"><b>����</b></a></li>
	<li class="menu-item" style="background-color:#C6EA8D;"><a href="/BlackIce/bookmark.jsp" align="center"><b>���ã��</b></a></li>
	<li class="menu-item"><a href="/BlackIce/board.jsp" align="center"><b>��������</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Login.jsp" align="center"><b>�α���</b></a></li>
  </ol>
</nav>

	<img src = "img/ready.png" style = "display:block; margin:0px auto; margin-top: 250px;">

</body>
</html>