<%@page import="user.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	UserVO vo = (UserVO) session.getAttribute("vo");
	String gender = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/total.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>로그인/회원가입</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center">MyPage</h1>
		<form action="index.html" method="post" name="joinForm">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					name="id" id="id" value="<%=vo.getId()%>">
			</div>
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					class="form-control" name="password" id="password"
					value="<%=vo.getPassword()%>">
			</div>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" class="form-control"
					id="name" name="name" value="<%=vo.getName()%>">
			</div>
			<div class="form-group">
				<%
					if (vo.getGender().equals("1")) {
					gender = "남자";
				} else {
					gender = "여자";
				}
				%>
				<label>성별</label> <input type="text" class="form-control"
					id="gender" name="gender" value="<%=gender%>">
			</div>
			<div class="form-group">
				<label for="birth">생년월일</label> <input type="text"
					class="form-control" id="birth" name="birth"
					value="<%=vo.getBirthyy()%>-<%=vo.getBirthmm()%>-<%=vo.getBirthdd()%>">
			</div>
			<div class="form-group">
				<label for="email">이메일</label> <input type="email"
					class="form-control" id="email" name="email"
					value="<%=vo.getEmail()%>">
			</div>
			<input type="submit" class="btn btn-primary btn-lg btn-block"
				value="로그아웃">
		</form>
	</div>
</body>
</html>