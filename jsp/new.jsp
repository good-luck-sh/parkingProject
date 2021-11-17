<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>회원가입</title>
</head>
<body>
<div class="container p-5 my-5 bg-primary text-white align-text">회원가입 하기</div>
<div class ="container">

	<form action="loginRegister.jsp" method="post">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">아이디 입력</label>
  			<input type="text" class="form-control" name="userid" required="required">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">비밀번호 입력</label>
  			<input type="password" class="form-control" name="password" required="required">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">이름 입력</label>
  			<input type="text" class="form-control" name="username" required="required">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">주소 입력(동까지 입력하세요)</label>
  			<input type="text" class="form-control" name="userAdress" required="required">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">이메일 주소 입력</label>
  			<input type="email" class="form-control" name="useremail">
		</div>
		<div class="d-grid gap-3">
			<button class="btn btn-outline-primary" type="submit">로그인</button>
  			<button class="btn btn-outline-secondary"><a href="home.jsp">뒤로가기</a></button>
		</div>
	</form>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>