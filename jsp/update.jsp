<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="com.project.dao.UserJdbcDAO"%>
<%@page import="com.project.dao.UserDAO"%>
<%@page import="com.project.service.CarParkingServiceImpl"%>
<%@page import="com.project.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	User loginUserInfo = (User)session.getAttribute("LOGIN_USER_INFO");	
		
	String password = request.getParameter("password");
	String adress1 = request.getParameter("adress1");
	String adress2 = request.getParameter("adress2");
	String email = request.getParameter("useremail");
	String name = request.getParameter("username");
	
	String adress = adress1 + adress2;
	
	UserJdbcDAO userDao = UserJdbcDAO.getInstance();
	
	
	User updateUser = userDao.getUserAdress(loginUserInfo.getId());
	
	String secretPassword = DigestUtils.sha256Hex(password);
	updateUser.setPassword(secretPassword);
	updateUser.setName(name);
	updateUser.setAdress(adress);
	updateUser.setEmailAdress(email);
	
	CarParkingServiceImpl carService = new CarParkingServiceImpl();
	carService.reviseUser(updateUser);
	session.setAttribute("LOGIN_USER_INFO", updateUser);
	response.sendRedirect("detail.jsp?success=ok");
%>
