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
		if (!document.joinForm.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		} else if (!document.joinForm.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		} else if (!document.joinForm.password_check.value) {
			alert("비밀번호 확인을 입력하세요.");
			return false;
		} else if (!document.joinForm.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (document.joinForm.password.value != document.joinForm.password_check.value) {
			alert("비밀번호가 다릅니다. 확인해주세요.");
			return false;
		}
	}
</script>
<title>로그인/회원가입</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center">Join Page</h1>

		<form action="action/joinAction.jsp" method="post" name="joinForm"
			onsubmit="return checkValue()">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					name="id" id="id" placeholder="아이디를 입력하세요 (필수입력)">
			</div>
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					class="form-control" name="password" id="password"
					placeholder="비밀번호를 입력하세요 (필수입력)">
			</div>
			<div class="form-group">
				<label for="password">비밀번호 확인</label> <input type="password"
					class="form-control" name="password_check" id="password_check"
					placeholder="비밀번호를 다시 입력하세요 (필수입력)">
			</div>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" class="form-control"
					id="name" name="name" placeholder="이름을 입력하세요 (필수입력)">
			</div>
			<div class="form-group">
				<label>성별</label>
				<div class="radio">
					<label> <input type="radio" name="gender" id="male"
						value="1" checked>남성
					</label>
				</div>
				<div class="radio">
					<label><input type="radio" name="gender" id="female"
						value="2">여성</label>
				</div>
			</div>
			<div class="form-group">
				<label for="birth">생년월일</label> <input type="text"
					class="form-control" name="birthyy" id="birthyy" maxlength="4"
					placeholder="년(4자)">
			</div>
			<div class="form-group">
				<select class="form-control" name="birthmm">
					<option value="">월</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" name="birthdd" id="birthdd"
					maxlength="2" placeholder="일">
			</div>
			<div class="form-group">
				<label for="email">이메일</label> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="이메일을 입력하세요">
			</div>
			<input type="submit" class="btn btn-primary btn-lg btn-block"
				value="회원가입"> <input type="reset"
				class="btn btn-primary btn-lg btn-block" value="다시쓰기">
		</form>
	</div>
</body>
</html>