<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>KM VOD</title>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
});
</script>

<style type="text/css">

</style>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container">
	<img alt="" src="image/vod.jpg" style="width:100%;height:150px;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="">My Money</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="">Home</a></li>
        <li><a href="#">M.M Service</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>

<div id="guestC" class="container">
	<div style="float: right;">
		<a href="login.do" style="margin-right: 5px;">로그인</a>
		<a href="join.do" style="margin-right: 5px;">회원가입</a>
	</div>
</div><!-- /.container -->
<div id="userC" class="container" style="display:none;">
	<div style="float: right;">
		<a href="#" style="margin-right: 5px;">마이페이지</a>
		<a href="#" style="margin-right: 5px;">로그아웃</a>
	</div>
</div><!-- /.container -->

</body>
</html>
