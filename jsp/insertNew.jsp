<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="com.project.service.CarParkingServiceImpl"%>
<%@page import="com.project.vo.User"%>
<%@page import="com.project.dao.UserJdbcDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("userid");
	String password = request.getParameter("password");
	String name = request.getParameter("username");
	String adress1 = request.getParameter("adress1");
	String adress2 = request.getParameter("adress2");
	String adress = adress1 + adress2;
	String email = request.getParameter("useremail");
	
	String userPassword = DigestUtils.sha256Hex(password);
	//비밀번호를 암호화한다.
	User user = new User();
	user.setId(id);
	user.setPassword(userPassword);
	user.setName(name);
	user.setAdress(adress);
	user.setEmailAdress(email);
	
	CarParkingServiceImpl carService = new CarParkingServiceImpl();
	
	UserJdbcDAO userDao = UserJdbcDAO.getInstance();
	User saveduser = userDao.getAllUser(id);
	if(saveduser != null) {
		response.sendRedirect("new.jsp?fail=id");
		return;
	}
	
	carService.userAdd(user);
	response.sendRedirect("login.jsp?succes=new");
%>