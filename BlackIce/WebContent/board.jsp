<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body style = "background-color: #F2F2F2;">

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

/* 탭 바탕 - 블랙 */

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

/* 제일 위에 메뉴바 색깔 */

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
	<li class="menu-item"><a href="/BlackIce/Mainpage.jsp" align="center"><b>메인</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Tmap1.html" align="center"><b>결빙</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Tmap2.html" align="center"><b>포트홀</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Tmap3.html" align="center"><b>샘플</b></a></li>
	<li class="menu-item"><a href="/BlackIce/bookmark.jsp" align="center"><b>즐겨찾기</b></a></li>
	<li class="menu-item" style="background-color:#DDD600;"><a href="/BlackIce/board.jsp" align="center"><b>게시판</b></a></li>
	<li class="menu-item"><a href="/BlackIce/Login.jsp" align="center"><b>로그인</b></a></li>
  </ol>
</nav>



</body>
</html>

</style>

<div class="container" style = "width: 1070px; padding: 100px; margin-top:62px;">
<table class="table table-bordered" style = "border: 2px solid #ddd;">
    <thead>
        <caption style = "padding-top: 0px; padding-bottom: 9px; color: #777; font-size: 20px; text-align: left; margin-left: 57px;"> < 방명록 > </caption>
    </thead>
    <tbody>
        <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
           
            <tr>
                <td><input style = "width:794px; border: 2px solid #ddd;" type="text"  placeholder="내용을 입력하세요." name="subject" class="form-control"/>
                <input style = "background-color: unset; color: slategray; margin-top: -31px; margin-right: 2px;" type="button" value="등록" onclick="sendData()" class="pull-right"/></td>
                
            </tr>
            <tr>
                <td style = "height:170px; border: 2px solid #ddd;"><span style = "height:310px;"cols="10" name="content" class="form-control"></span></td>
            </tr>
       
            
            
            <img src = "img/post.png" style = "width: 72px; margin-left: -14px; margin-bottom: -32px;">
            
            
        </form>
   </tbody>
</table>
</div>
</body>
</html>


