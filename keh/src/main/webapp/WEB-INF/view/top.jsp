<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/mainmenu.js"></script>
<link href="<%=request.getContextPath()%>/css/mainmenu.css" type="text/css" />
</head>

<body>
<div id="container">
		<ul class="menu">
			<li><a href="#">영화</a>
				<ul class="sub">
					<li><a href="#">액션</li>
					<li><a href="#">드라마</li>
					<li><a href="#">코미디</li>
					<li><a href="#">성인</li>
				</ul></li>
			<li><a href="#">드라마</a>
				<ul class="sub">
					<li><a href="#">KBS</li>
					<li><a href="#">SBS</li>
					<li><a href="#">MBC</li>
				</ul></li>
			<li><a href="#">교육</a>
				<ul class="sub">
					<li><a href="#">국어</li>
					<li><a href="#">수학</li>
					<li><a href="#">영어</li>
				</ul></li>
			<li><a href="#">엔터테인먼트</a>
				<ul class="sub">
					<li><a href="#">음악</li>
					<li><a href="#">쇼</li>
				</ul></li>
			<li><a href="addcontents.do">추가하기</a></li>
		</ul>
	
	</div>
</body>
</html>