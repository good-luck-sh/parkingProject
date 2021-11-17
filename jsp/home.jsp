<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
	    <title>서울시 주차를 부탁해</title>
</head>
<div class="p-5 bg-primary text-white text-center">
  <h1>서울시 주차를 부탁해</h1>
  <p>서울시 주소를 검색하면 동네 주소에 해당하는 서울시 공영 주차장 정보가 나오는 웹 페이지 입니다.</p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="home.jsp??no=1">홈</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp?no=1">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="new.jsp?no=1">회원가입</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container mt-5">
  <div class="row">
    <div class="col-sm-4">
  		<div class="card" style="width:100%">
  	    	<div class="card-body">
  	 			<h4 class="card-title">만든이 : 김승희</h4>
   				<p class="card-text">2021년 10월 28일 기준으로 제작한 토이 프로젝트 입니다.</p>
  			</div>
		</div>
	<div class="card">
		<div class="card-header">
			<h3 class="mt-4">링크를 클릭하세요</h3>
			<div class="card-body">
				 <ul class="list-group list-group-flush">
        			<li class="list-group-item active">
         		    	<a class="btn btn-outline-primary" href="home.jsp??no=1">홈</a>
        			</li>
        			<li class="list-group-item">
          				<a class="btn btn-outline-primary" href="login.jsp?no=1">로그인</a>
       				</li>
        			<li class="list-group-item">
          				<a class="btn btn-outline-primary" href="new.jsp?no=1">회원가입</a>
        			</li>
			</div>
		</div>
	</div>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>주차장 출력하기</h2>
      <h5>2021년 10월 28일 기준</h5>
      <p>전체 주차장 출력 하기</p>
      <p>로그인을 진행하면 해당 주소의 주차장이 출력됩니다.</p>
      <p><span class="badge bg-primary">예시</span></p>
	  <div class="table-responsive">
	   <table class="table table-hover align-middle">
	   		<thead class="table-dark ">
	   			<tr class="align-middle"">
	   				<th>번호</th>
	   				<th>이름</th>
	   				<th>주소</th>
	   				<th>종류</th>
	   				<th>구별</th>
	   				<th>전화번호</th>
	   				<th>유료, 무료</th>
	   				<th>저녁 개방</th>
	   				<th>토요일 비용</th>
	   				<th>일요일 비용</th>
	   				<th>기본 금액<span class="badge bg-success">분</span></th>
	   				<th>기본 시간<span class="badge bg-success">분</span></th>
	   				<th>추가 금액<span class="badge bg-success">분</span></th>
	   				<th>추가 시간<span class="badge bg-success">분</span></th>
	   			</tr>
	   		</thead>
	   		<tbody>
	   			<tr class="align-middle">
	   				<td>1047</td>
	   				<td>(구)북부지법주변(구)</td>
	   				<td>노원구 공릉동 629-1</td>
	   				<td>노상 주차장</td>
	   				<td>시간제 주차장</td>
	   				<td>0</td>
	   				<td>유료</td>
	   				<td>야간 미개방</td>
	   				<td>무료</td>
	   				<td>무료</td>
	   				<td>250</td>
	   				<td>5</td>
	   				<td>0</td>
	   				<td>0</td>
	   			</tr>
	   		</tbody>
	   </table>
	  </div>
    </div>
  </div>
</div>

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>

</body>
</html>
