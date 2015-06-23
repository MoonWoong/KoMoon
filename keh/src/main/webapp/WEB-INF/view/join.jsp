<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>회원가입</h2>
		<form action="register.do" method="post">
			<table>
				<tr height="40px">
					<td>ID</td>
					<td><input type="text" name="id"></td>
				<tr height="40px">
					<td>PASSWORD</td>
					<td><input type="password" name="pw"></td>
				<tr height="40px">
					<td>NAME</td>
					<td><input type="text" name="name"></td>
			</table>
			<table>
			<tr>
			<td height="40px" align="center">
			<input type="submit" name ="b_submit" value="등록"></td>
			<td height="40px" align="center">
			<input type="button" name ="b_reset"value="취소" onclick="javascript:history.go(-1)">
			</table>
		</form>
		<!-- <a href="backpage.do">로그인화면으로 돌아가기</a> -->
	</div>
</body>
</html>