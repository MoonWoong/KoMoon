<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>CSS MenuMaker</title>

<link rel="stylesheet" href="css/styles.css">

<script type="text/javascript">
$(Document).ready(function(){
	
});
</script>
<style type="text/css">
#contents{
	width: 200px;
	height: 560px;
}
div{
	position: relative;
}
</style>
</head>
<body>
	<div id="title">
		<img alt="" src="image/vod.jpg" style="width:100%;height:180px;">
	</div>
	<div id="contents">
		<%@include file="WEB-INF/view/menu/menu.jsp" %>
	</div>
	<div id="main">
		<%@include file="WEB-INF/view/queryTest.jsp" %>
	</div>
</body>
</html>
