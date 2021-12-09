<%@page import="com.project.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>로그인 성공</title>
</head>
<body>
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
	String login = request.getParameter("success");
	if("login".equals(login)) {
%>
	<div class="alert alert-primary">
		<p><strong>로그인성공</strong>즐거운 이용되세요</p>
	</div>
<% 
	}
	
%>
<div class ="container">
	<div class="row">
		<div class="col">
			<div class="alert alert-primary" role="alert">
  				로그인 성공
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col">
			<ol>
				<li><a href="searchloginadress.jsp">로그인 주소로 검색하기</a></li>
				<li><a href="search.jsp">다른 지역구 검색하기</a></li>
				<li><a href="updateUser.jsp">정보 수정하기</a></li>
				<li><a href="delete.jsp">탈퇴하기</a></li>
			</ol>
		</div>
	</div>
	<div  class="row">
		<div class="col">
			<div class="d-grid gap-2">
				 <button class="btn btn-outline-primary" type="button" ><a href="userlogout.jsp">로그아웃</a></button>
			</div>		
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>