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
<%
	pageContext.setAttribute("menu", "login");
	//네비바 활성화를 위하여 pageContext에서 값을 꺼내온다.
%>
<%@ include file="nav.jsp" %>
<%
	String fail = request.getParameter("fail");
	if ("id".equals(fail)) {
%>
		<div class="alert alert-danger">
			<p><strong>가입 실패!!</strong> 아이디가 중복됩니다.</p>
		</div>
<%
	}
%>
<div class="container p-5 my-5 bg-success text-white align-text">회원가입 하기</div>
<div class ="container">
	<div class="row">
		<div class="col">
				<form action="insertNew.jsp" method="post">
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
  				<label class="form-label" for="user-adress">검색하고자 하는 구를 입력하세요</label>
				<select class="form-select" name="adress1" id="userAdress">
							<option value="" disabled="disabled" selected="selected">선택하세요</option>
							<option value="도봉구 ">도봉구</option>
							<option value="노원구 ">노원구</option>
							<option value="중랑구 ">중랑구</option>
							<option value="광진구 ">광진구</option>
							<option value="강북구 ">강북구</option>
							<option value="성북구 ">성북구</option>
							<option value="동대문구 ">동대문구</option>
							<option value="성동구 ">성동구</option>
							<option value="종로구 ">종로구</option>
							<option value="중구 ">중구</option>
							<option value="은평구 ">은평구</option>
							<option value="서대문구 ">서대문구</option>
							<option value="용산구 ">용산구</option>
							<option value="마포구 ">마포구</option>
							<option value="강서구 ">강서구</option>
							<option value="양천구 ">양천구</option>
							<option value="영등포구 ">영등포구</option>
							<option value="동작구 ">동작구</option>
							<option value="구로구 ">구로구</option>
							<option value="관악구 ">관악구</option>
							<option value="금천구 ">금천구</option>
							<option value="서초구 ">서초구</option>
							<option value="강남구 ">강남구</option>
							<option value="송파구 ">송파구</option>
							<option value="강동구 ">강동구</option>
				</select>
				</div>
			<div class="row">
				<div class="col mt-3">
					<label class="form-label" for="user-adress" >검색하고자 하는 동을 입력하세요</label>
					<input type="text" value="**동" name="adress2"/ >
				</div>
			</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">이메일 주소 입력</label>
  			<input type="email" class="form-control" name="useremail">
		</div>
		<div class="d-grid gap-3">
			<button class="btn btn-outline-primary" type="submit">회원가입</button>
  			<button class="btn btn-outline-secondary"><a href="home.jsp">뒤로가기</a></button>
		</div>
		</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>