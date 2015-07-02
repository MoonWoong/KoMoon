<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/view/menu/menu.jsp" %>

<style type="text/css">
.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin: 10px 0 15px 0;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

</style>

<script type="text/javascript">
function fn_loginPrcs(){
	if($("#userId").val() == ""){
		alert("아이디를 입력해주세요.");
		return false;
	}
	if($("#userPw").val() == ""){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	var url = "http://localhost:8080/MyMoney/user/loginPrcs.do";
	var data = $("#loginForm").serialize();
	
	commonAjax(url, data, callback = function(returnData){
		alert(returnData.userName + "님 안녕하세요.");
		location.href = "openMain.do";
	});
}
</script>

</head>
<body>
<div class="container">
	
  <form class="form-signin" id="loginForm">
    <h2 class="form-signin-heading">MyMoney Service</h2>
    <input type="text" id="userId" name="userId" class="form-control" placeholder="아이디" autofocus>
    <input type="password" id="userPw" name="userPw" class="form-control" placeholder="비밀번호">
    <div class="checkbox">
      <label>
        <input type="checkbox" value="remember-me">아이디 기억
      </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="button" onclick="javascript:fn_loginPrcs();">Login</button><br>
    <a href="#">아이디 찾기</a> /
  	<a href="#">비밀번호 찾기</a>
  	<a href="register.do" style="float: right;">회원가입</a>
  </form>
  
  <div style="text-align: center;">
		<img alt="" src="image/money2.jpg" style="width: 400px; height: 200px;">
	</div>
  

</div> <!-- /container -->
</body>
</html>