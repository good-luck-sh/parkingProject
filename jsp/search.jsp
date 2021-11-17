<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>검색하기</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>
<div class ="container p-5 my-5 bg-black text-white align-text">
	<div class="row ">
		<div class="col">
			<h1>다른 지역을 검색하기</h1>
			<p>서울시의 다른 지역을 검색하는 웹 페이지 입니다. </p>
		</div>	
	</div>
	<div class="row">
		<div class="col">
			<img alt="서웋시 지도" src="../resourse/map_0.png" >
		</div>
	</div>
	<div>
		<div>
			<form action="adress.jsp?id=<%=id %>&password=<%=password %>" method="post">
				<div class="row">
					<div class="col mb-3">
						<label class="form-label" for="user-adress">검색하고자 하는 구를 입력하세요</label>
						<select class="form-select" name="adress1" id="userAdress">
							<option value="" disabled="disabled" selected="selected">선택하세요</option>
							<option value="도봉구 ">도붕구</option>
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
				<div class="row">
				<div class="col mb-3 mt-5">
					<div class="d-grid gap-3">
						<button class="btn btn-outline-primary" type="submit">찾기</button>
			  			<button class="btn btn-outline-secondary"><a href="detail.jsp?id=<%=id%>&password=<%=password%>">뒤로가기</a></button>
					</div>
				</div>
			</div>
			</div>
		</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>