<%@page import="com.project.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String menu = (String)pageContext.getAttribute("menu");
	User loginUserInfo = (User)session.getAttribute("LOGIN_USER_INFO");
%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>서울시 주차를 부탁해</title>
</head>
<body>
<div class ="container">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active">홈</a>
      </li>
<%
	if(loginUserInfo == null) {
%>
      <li class="nav-item">
        <a class="nav-link  <%="login".equals(menu) ? "active" : "" %> " href="login.jsp">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link  <%="loginRegister".equals(menu) ? "active" : "" %>"" href="new.jsp">회원가입</a>
      </li>
<%
	} else {
%>
	 <li class="nav-item">
        <a class="nav-link  <%="login".equals(menu) ? "active" : "" %>"" href="userlogout.jsp">로그 아웃</a>
      </li>
<% 
	}
%>
    </ul>
  </div>
</nav>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>