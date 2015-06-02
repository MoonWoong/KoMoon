<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>

<link rel="stylesheet" href="/WEB-INF/css/normalize.css">
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css'>

<style type="text/css">
* {
  transition: all 500ms ease-out;
  -webkit-transition: all 500ms ease-out;
}

html, body, section, .page {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  transition: all 1s cubic-bezier(.5, -0.005, 0.2, 1) !important;
  -webkit-transition: all 1s cubic-bezier(.5, -0.005, 0.2, 1) !important;
  color: #fff;
  background: #374046;
  overflow: hidden;
}

section {
  width:400%;  
}

.page {
  position: absolute;
}

#p1 {
  left: 0;
}

#p2 {
  left: 100%;
  background: #FF5722;
}

#p3 {
  left: 200%;
  background: #593C1F;
}

#p4 {
  left: 300%;
  background: deeppink;
}

ul {
 position: fixed; 
 z-index: 1;
}
#t1:target .page#p1 {
    transform: translateX(0);
}
#t2:target .page#p2 {
    transform: translateX(-90%);
}
#t3:target .page#p3 {
    transform: translateX(-190%);
}
#t4:target .page#p4 {
    transform: translateX(-290%);
}

#t2:target .page#p1, 
#t3:target .page#p1,
#t4:target .page#p1 {
  background: black;
}

#t2:target .page#p1 .icon, 
#t3:target .page#p1 .icon,
#t4:target .page#p1 .icon {
  -webkit-filter: blur(3px);
  filter: blur(3px);
}

.icon {
  color: #fff;
  font-size: 32px;
  display: block;
}

ul .icon:hover {
  opacity: 0.6;
}

#p1 .icon .title {
  margin-bottom: 20px;
}

#t2:target ul .icon,
#t3:target ul .icon,
#t4:target ul .icon {
  transform: scale(.6); 
  transition-delay: .25s;
}

#t2:target #dos {
  transform: scale(1.2) !important;
}

#t3:target #tres {
  transform: scale(1.2) !important;
}

#t4:target #cuatro {
  transform: scale(1.2) !important;
}

ul {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  /*right: 0;*/
  margin: auto;
  height: 280px;
  width: 10%;
  padding: 0;
  text-align: center;
 }

ul li {
  margin: 30px 0;
}

a {
  text-decoration: none;
  font-family: open sans, sans-serif;
}

.title, .hint {
  font-family: open sans, sans-serif;
  display: block;
}

.title {
  font-size: 38px;
}

.hint {
  font-size: 13px;
}

.hint a {
  color: #EFFF06;
  transition: all 250ms easet-out;
}

.hint a:hover {
  color: #FFF;
}

.page .icon {
  position: absolute;
  top: 0;
  bottom: 0;
  right: 10%;
  left: 0;
  width: 270px;
  height: 170px;
  margin: auto;
  text-align: center;
  font-size: 80px;
  transform: translateX(360%);
  line-height: 1.3;
}

.page#p1 .icon {
  height: 220px;
}

.page#p1 .icon {
  transform: translateX(0) !important;
}

#t2:target .page#p2 .icon {
  transform: translateX(0) !important;
  transition-delay: 500ms;
}

#t3:target .page#p3 .icon {
  transform: translateX(0) !important;
  transition-delay: 500ms;
}

#t4:target .page#p4 .icon {
  transform: translateX(0) !important;
  transition-delay: 500ms;
}

.credit{
	position: fixed;
	bottom: 0;
	width: 100%;
	text-align: center;
	font-size: 10px;
}

.credit a {
	color: #fff
}
</style>
</head>
<body>
	<div class="ct" id="t1">
		<div class="ct" id="t2">
			<div class="ct" id="t3">
				<div class="ct" id="t4">
					<section>  
						<ul>
						   <a href="#t1"><li class="icon fa fa-home" id="uno"></li></a>
						   <a href="#t2"><li class="icon fa fa-file-movie-o" id="dos"></li></a>
						   <a href="#t3"><li class="icon fa fa-paperclip" id="tres"></li></a>
						   <a href="#t4"><li class="icon fa fa-book" id="cuatro"></li></a>
						</ul>
						<div class="page" id="p1">
							<li class="icon fa fa-home"><span class="title">Home</span><span class="hint">Like this pen to see the magic!...<br/> Just kidding, it won't happen anything but I'll be really happy If you do so.</span></li>   
						</div>
						<div class="page" id="p2">
							<li class="icon fa fa-file-movie-o"><span class="title">Movie</span></li>
						</div>  
						<div class="page" id="p3">
							<li class="icon fa fa-paperclip"><span class="title">Drama</span></li>
						</div>
						<div class="page" id="p4">
							<li class="icon fa fa-book"><span class="title">Education</span><span class="hint"><a href="https://dribbble.com/rupok" target="_blank">Follow me on Dribbble</span></li>
						</div>  
						<p class="credit"> Original Pen by <a href="http://codepen.io/hrtzt/">Alberto Hartzet</a></p>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
