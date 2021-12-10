<%@page import="oracle.jdbc.proxy.oracle$1jdbc$1replay$1driver$1NonTxnReplayableResultSet$2oracle$1jdbc$1internal$1OracleResultSet$$$Proxy"%>
<%@page import="com.project.vo.Parking"%>
<%@page import="java.util.List"%>
<%@page import="com.project.service.CarParkingServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>주소 검색</title>
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
	String adress1 = request.getParameter("adress1");
	String adress2 = request.getParameter("adress2");

	String adress = adress1 + adress2;
	CarParkingServiceImpl carService = new CarParkingServiceImpl();
	List<Parking> parking = carService.getSearchParking(adress);

	
%>



	<div class ="container-fluid">
	<div class="row">
		<div class="col">
		<h1>검색한 주소</h1>
		<p>검색한 주소로 검색합니다.</p>
	  	<div class="table-responsive">
	   		<table class="table table-hover align-middle">
	   			<thead class="table-dark ">
	   				<tr class="align-middle">
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
	for(Parking park : parking) {
		if(park.getNo() == 0 ) {
%>
			<div class="row">
				<div class="col">
					<h4>해당하는 주소에 공영주차장이 존재하지 않습니다.</h4>
					<p>서비스를 준비하겠습니다. </p>
				</div>
			</div>
<% 
		} else {
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
}}
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