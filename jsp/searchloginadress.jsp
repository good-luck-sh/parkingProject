<%@page import="com.project.service.CarParkingServiceImpl"%>
<%@page import="com.project.dao.UserJdbcDAO"%>
<%@page import="com.project.dao.CarParkingJdbcDAO"%>
<%@page import="com.project.vo.Parking"%>
<%@page import="java.util.List"%>
<%@page import="com.project.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>로그인 주소로 찾기</title>
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
	UserJdbcDAO userDao = UserJdbcDAO.getInstance();
	CarParkingJdbcDAO carDao = CarParkingJdbcDAO.getInstance();
	CarParkingServiceImpl carservice = new CarParkingServiceImpl();
	
%>
	<div class="row">
		<div class="col">
			<h1>로그인 주소로 찾기</h1>
		</div>
	</div>
	<div class ="container-fluid">
	<div class="row">
		<div class="col">
		<p>회원가입시 작성된 주소로 검색합니다.</p>
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
	   		<%

	User findUser = userDao.getUserAdress(loginUserInfo.getId());
	List<Parking> parks = carservice.getUserAdressPaking(findUser);
	for(Parking park : parks) {
		
%>
	   			<tr class="align-middle">
	   				<td><%=park.getNo() %></td>
	   				<td><%=park.getName() %></td>
	   				<td><%=park.getAdress() %></td>
	   				<td><%=park.getKinds() %></td>
	   				<td><%=park.getDivision() %></td>
	   				<td><%=park.getTelNumber() %></td>
	   				<td><%=park.getPay() %></td>
	   				<td><%=park.getNightOpen() %></td>
	   				<td><%=park.getSatPay() %></td>
	   				<td><%=park.getSunPay() %></td>
	   				<td><%=park.getBasicPrice() %></td>
	   				<td><%=park.getBasicTime() %></td>
	   				<td><%=park.getAddPrice() %></td>
	   				<td><%=park.getAddTime() %></td>
	   			</tr>
<%
}
%>
	   		</tbody>
	   </table>
	</div>
</div>
	

	   <div class="d-grid gap-3">
	   		<button class="btn btn-outline-secondary"><a href="detail.jsp">뒤로가기</a></button>
  			<button class="btn btn-outline-secondary"><a href="userlogout.jsp">로그아웃</a></button>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>