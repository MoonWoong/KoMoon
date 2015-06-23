<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<h2>회원정보변경</h2>
		<form action="update.do" method="post">
			<table>
				<tr height="40px">
					<td>ID</td>
					<td><input type="text" name="name" value="${userDto.id }" disabled="disabled"></td>
				</tr>
				<tr height="40px">
					<td>NAME</td>
					<td><input type="text" name="name" value="${userDto.name }" required="required"></td>
				</tr>
				<tr height="40px">
					<td>PASSWORD</td>
					<td><input type="password" name="pw" required="required"></td>
				</tr>
			</table>
			<table>
			<tr>
			<td height="40px" align="center">
			<input type="submit" name ="b_submit" value="변경"></td>
			<td height="40px" align="center">
			<input type="button" name ="b_reset"value="취소" onclick="javascript:history.go(-1)"></td>
			</tr>
			</table>
		</form>
		<!-- <a href="backpage.do">로그인화면으로 돌아가기</a> -->
	</div>
</body>
</html>