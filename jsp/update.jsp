<%@page import="com.project.service.CarParkingServiceImpl"%>
<%@page import="com.project.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String adress1 = request.getParameter("adress1");
	String adress2 = request.getParameter("adress2");
	String email = request.getParameter("useremail");
	String name = request.getParameter("username");
	
	String adress = adress1 + adress2;
	
	User user = new User();
	user.setId(id);
	user.setPassword(password);
	user.setName(name);
	user.setAdress(adress);
	user.setEmailAdress(email);
	
	CarParkingServiceImpl carService = new CarParkingServiceImpl();
	carService.reviseUser(user);

	response.sendRedirect("detail.jsp?id="+request.getParameter("id")+"&password="+request.getParameter("password"));
%>
