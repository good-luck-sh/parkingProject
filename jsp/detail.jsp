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
	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">로그아웃</a>
      </li>
    </ul>
  </div>
</nav>
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
				<li><a href="searchloginadress.jsp?id=<%=id%>&password=<%=password%>">로그인 주소로 검색하기</a></li>
				<li><a href="search.jsp?id=<%=id%>&password=<%=password%>">다른 지역구 검색하기</a></li>
				<li><a href="updateUser.jsp?id=<%=id%>&password=<%=password%>">정보 수정하기</a></li>
				<li><a href="delete.jsp?id=<%=id%>&password=<%=password%>">탈퇴하기</a></li>
			</ol>
		</div>
	</div>
	<div  class="row">
		<div class="col">
			<div class="d-grid gap-2">
				 <button class="btn btn-outline-primary" type="button" ><a href="logout.jsp">로그아웃</a></button>
			</div>		
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>