<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

</script>
<title>VOD 테스트</title>
</head>
<body>
test1의 이름은 '${name}' 입니다
<input type="button" value="돌아가기" onclick="history.back()">

<form action="login.do" method="post">
<input type="text" id="userId" name="userId"/>
<input type="password" id="userPw" name="userPw"/>
<input type="submit" value="로그인확인"/>
</form>

</body>
</html>