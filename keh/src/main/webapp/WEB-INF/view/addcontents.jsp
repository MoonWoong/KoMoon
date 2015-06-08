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
		<h2>콘텐츠 추가</h2>
		<form action="add.do" method="post">
			<table>
				<tr height="40px">
					<td>제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr height="40px">
					<td>감독</td>
					<td><input type="text" name="supervisor"></td>
				</tr>
				<tr height="40px">
					<td>주연</td>
					<td><input type="text" name="star"></td>
				</tr>
				<tr height="40px">
					<td>가격</td>
					<td><input type="text" name="price"></td>
				</tr>
				<tr height="40px">
					<td>줄거리</td>
					<td><input type="text" name="story"></td>
				</tr>
				<tr height="40px">
					<td>카테고리</td>
					<td><input type="text" name="category"></td>
				</tr>
				<tr height="40px">
					<td>포스터</td>
					<td><input type="text" name="poster"></td>
				</tr>
			</table>
			<table>
				<tr>
					<td height="40px" align="center"><input type="submit"
						name="b_submit" value="등록"></td>
					<td height="40px" align="center"><input type="button"
						name="b_reset" value="취소" onclick="javascript:history.go(-1)"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>