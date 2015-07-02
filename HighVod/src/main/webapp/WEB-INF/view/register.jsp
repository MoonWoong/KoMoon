<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script src="js/validation/jquery.validate.js"></script>
<script src="js/validation/registerValid.js"></script>
<script src="js/common.js"></script>

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
.form-signin input{
	margin-top: 5px;
	width: 300px;
	height: 30px;
}
#userBirth{
	margin-bottom: 10px;
}

input[type=radio] {
    display:none;
}
 
input[type=radio] + label {
	float: right;
    display:inline-block;
    margin:-2px;
    padding: 4px 12px;
    margin-top: 5px;
    font-size: 14px;
    line-height: 20px;
    color: #333;
    text-align: center;
    text-shadow: 0 1px 1px rgba(255,255,255,0.75);
    vertical-align: middle;
    cursor: pointer;
    background-color: #f5f5f5;
    background-image: -moz-linear-gradient(top,#fff,#e6e6e6);
    background-image: -webkit-gradient(linear,0 0,0 100%,from(#fff),to(#e6e6e6));
    background-image: -webkit-linear-gradient(top,#fff,#e6e6e6);
    background-image: -o-linear-gradient(top,#fff,#e6e6e6);
    background-image: linear-gradient(to bottom,#fff,#e6e6e6);
    background-repeat: repeat-x;
    border: 1px solid #ccc;
    border-color: #e6e6e6 #e6e6e6 #bfbfbf;
    border-color: rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);
    border-bottom-color: #b3b3b3;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',endColorstr='#ffe6e6e6',GradientType=0);
    filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
    -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,0.2),0 1px 2px rgba(0,0,0,0.05);
    -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,0.2),0 1px 2px rgba(0,0,0,0.05);
    box-shadow: inset 0 1px 0 rgba(255,255,255,0.2),0 1px 2px rgba(0,0,0,0.05);
}
 
input[type=radio]:checked + label {
       background-image: none;
    outline: 0;
    -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.15),0 1px 2px rgba(0,0,0,0.05);
    -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.15),0 1px 2px rgba(0,0,0,0.05);
    box-shadow: inset 0 2px 4px rgba(0,0,0,0.15),0 1px 2px rgba(0,0,0,0.05);
        background-color:#e0e0e0;
}

.RegisterError{
	color: #EF4141;
	font-size: 9px;
}

</style>

<script type="text/javascript">
$(document).ready(function () {
	registerValid();
});

function fn_submitTest(){
	if(!document.getElementsByName("agree")[0].checked){
		alert("개인적이지않은 정보수집에 동의해주세요.");
		$("#agree").focus();
		return false;
	}
	
	var data = $("#registerForm").serialize();
	var url = "user/insertUser.do";
	commonAjax(url, data, callBack = function(){
		alert("회원가입 성공");
		location.href = "openMain.do";
	})
	
// 	$.ajax({
// 		url : "user/insertUser.do",
// 		type : "post",
// 		data : $("#registerForm").serialize(),
// 		success : function(){
// 			alert("회원가입 성공");
// 			location.href = "openMain.do";
// 		}
// 	});
}

</script>

</head>
<body>
<div class="container">
	
  <form action="javascript:fn_submitTest();" id="registerForm" class="form-signin" method="post">
    <h2 class="form-signin-heading">M.M을 사용해보세요!</h2>
    
    
    <table style="border: 0;">
		<thead>
			<tr>
				<td colspan=2 >
					<input type="text" id="userId" name="userId" class="form-control" placeholder="아이디">
				</td>
			</tr>
			<tr>
				<td colspan=2 class="RegisterError"></td>
			</tr>
			<tr>
				<td colspan=2 >
					<input type="password" id="userPw" name="userPw" class="form-control" placeholder="비밀번호">
				</td>
			</tr>
			<tr>
				<td colspan=2 class="RegisterError"></td>
			</tr>
			<tr>
				<td colspan=2 >
					<input type="password" id="userPwChk" name="userPwChk" class="form-control" placeholder="비밀번호확인">
				</td>
			</tr>
			<tr>
				<td colspan=2 class="RegisterError"></td>
			</tr>
		</thead>
	</table>
	<table style="border: 0;">
		<tr>
			<td colspan=2 >
				<input type="text" id="userName" name="userName" class="form-control" placeholder="이름">
			</td>
		</tr>
		<tr>
			<td colspan=2 class="RegisterError"></td>
		</tr>
		<tr>
			<td colspan=2 >
				<input type="text" id="userEmail" name="userEmail" class="form-control" placeholder="이메일">
			</td>
		</tr>
		<tr>
			<td colspan=2 class="RegisterError"></td>
		</tr>
		<tr>
			<td colspan=2>
	        	<input type="radio" id="userSex2" name="userSex" value="F" /><label for="userSex2">여성</label>
				<input type="radio" id="userSex1" name="userSex" value="M" checked="checked"/><label for="userSex1">남성</label>
			</td>
		</tr>
		<tr>
			<td colspan=2 >
				<input type="text" id="userBirth" name="userBirth" class="form-control" placeholder="생년월일">
			</td>
		</tr>
		<tr>
			<td colspan=2 class="RegisterError"></td>
		</tr>
		<tr>
			<td colspan=2>
				<label>안중요한 개인정보 수집 동의</label><input type="checkbox" id="agree" name="agree" style="width: 30px;height: 20px;">
			</td>
		</tr>
	</table>
    
    
    <button class="btn btn-lg btn-warning" type="submit" style="width: 48%;">가입하기</button>
    <button class="btn btn-lg btn-primary" type="button" style="width: 48%; float: right;" onclick="history.back();">돌아가기</button>
    <br>
  </form>
  
	<div style="text-align: center;">
		<img alt="" src="image/money2.jpg" style="width: 400px; height: 200px;">
	</div>
  

</div> <!-- /container -->
</body>
</html>