<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${check =='success'}">
		성공적으로 변경되었습니다.
		<input type="button" value="돌아가기" onclick="location='myPage.do'">
	</c:when>
	<c:when test="${check =='pass'}">
		비밀번호를 확인하세요.
		<input type="button" value="확인" onclick="javascript:history.go(-1)"></td>
	</c:when>
	<c:otherwise>
		알수없는 오류발생
		<input type="button" value="돌아가기" onclick="javascript:history.go(-1)"></td>
	</c:otherwise>
</c:choose>
</body>
</html>