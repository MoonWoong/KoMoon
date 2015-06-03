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
		<form action="joincheck.jsp" method="post">
			<table>
				<tr height="40px">
					<td>ID</td>
					<td><input type="text" name="id"></td>
				<tr height="40px">
					<td>PASSWORD</td>
					<td><input type="text" name="pw"></td>
				<tr height="40px">
					<td>NAME</td>
					<td><input type="text" name="name"></td>
			</table>
			<table>
			<tr>
			<td height="40px" align="center">
			<input type="submit" name ="b_submit" value="등록"></td>
			<td height="40px" align="center">
			<input type="reset" name ="b_reset" value="취소"></td>
			</table>
		</form>
		<a href="history.go(1)">로그인화면으로 돌아가기</a>
	</div>
</body>
</html>