<%@page import="com.project.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>로그인</title>
</head>
<%
	pageContext.setAttribute("menu", "login");
	//네비바 활성화를 위하여 pageContext에서 값을 꺼내온다.
%>
<%@ include file="nav.jsp" %>
<% 
	if(loginUserInfo == null) {
		response.sendRedirect("login.jsp?fail=login");
		return;
	}
	String fail = request.getParameter("fail");
	String login = request.getParameter("succes");
	if("new".equals(login)) {
%>
	<div class="alert alert-primary">
		<p><strong>가입 성공</strong>로그인을 진행해주세요</p>
	</div>
<% 
	}
	if("login".equals(fail)) {
%>
	<div class="alert alert-danger">
		<p><strong>로그인 실패</strong> 로그인을 진행해주세요</p>
	</div>
<% 
	}
	if("id".equals(fail)) {
%>
		<div class="alert alert-danger">
		<p><strong>로그인 실패</strong>해당하는 아이디가 존재하지 않습니다.</p>
	</div>
<%
	}
	if("password".equals(fail)) {
%>
		<div class="alert alert-danger">
		<p><strong>로그인 실패</strong> 비밀번호가 틀립니다.</p>
	</div>
<%
	}
%>



<body>
<div class="container p-5 my-5 bg-success text-white align-text">로그인 하기</div>
<div class ="container">
	<div class="row">
		<div class="col">
			<form action="loginRegister.jsp" method="post">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">아이디 입력</label>
  			<input type="text" class="form-control" name="userid">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">비밀번호 입력</label>
  			<input type="password" class="form-control" name="password">
		</div>
		<div class="text-right">
			<button class="btn btn-outline-secondary" type="submit">로그인</button>
  			<button class="btn btn-outline-secondary"><a href="home.jsp" style="text-decoration-line:none" >뒤로가기</a></button>
				</div>
			</form>
		</div>	
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>