<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="css/total.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function checkValue() {
		if (!document.loginForm.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		} else if (!document.loginForm.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
	}
</script>
<title>로그인/회원가입</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center">Login Page</h1>

		<form method="post" action="action/loginAction.jsp" name="loginForm"
			onsubmit="return checkValue()">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					id="id" name="id" placeholder="아이디를 입력하세요">
			</div>
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					class="form-control" id="password" name="password"
					placeholder="비밀번호를 입력하세요">
			</div>
			<input type="submit" class="btn btn-primary btn-lg btn-block"
				value="로그인"> <input type="button"
				class="btn btn-primary btn-lg btn-block" value="회원가입"
				onclick="location.href='joinForm.jsp'">
		</form>
	</div>
</body>
</html>