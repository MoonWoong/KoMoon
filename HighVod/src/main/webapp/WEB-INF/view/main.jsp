<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/menu/menu.jsp" %>

<script type="text/javascript">
	
</script>

<title>VOD 테스트</title>
</head>
<body>
<c:choose>
	<c:when test="${sessionCheck == 'nok'}">
		<div class="container">
			<div style="float: right;">
				<a href="login.do" style="margin-right: 5px;">로그인</a>
				<a href="register.do" style="margin-right: 5px;">회원가입</a>
			</div>
		</div><!-- /.container -->
	</c:when>
	<c:when test="${sessionCheck == 'ok'}">
		<div class="container">
			<div style="float: right;">
				<a href="#" style="margin-right: 5px;">마이페이지</a>
				<a href="#" style="margin-right: 5px;">로그아웃</a>
			</div>
		</div><!-- /.container -->
	</c:when>
</c:choose>



슬라이드

<div class="container" style="text-align: center; margin-top: 20px;">
	<img alt="" src="image/money.png" style="width: 400px; height: 180px;">
	<img alt="" src="image/money1.jpg" style="width: 400px; height: 180px;">
	<br><h1>Service</h1><br>
	
	<img alt="" src="image/money3.jpg" style="width: 400px; height: 180px;">
</div>


</body>
</html>