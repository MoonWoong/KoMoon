<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" class="body">
		<h2>로그인화면</h2>
		<form action="login.html" method="post">
			<table>
				<tr height="40px">
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr height="40px">
					<td>PASSWORD</td>
					<td><input type="text" name="pw"></td>
				</tr>
			</table>

			<table>
				<tr>
					<td align="center"><input type="submit" value="로그인"></td>
					<td align="center"><input type="reset" value="리셋"></td>
				</tr>
			</table>
			<a href ="join.jsp">회원가입 하고싶어요.</a>
		</form>
	</div>
</body>
</html>