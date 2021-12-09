<%@page import="com.project.vo.User"%>
<%@page import="com.project.dao.UserJdbcDAO"%>
<%@page import="com.project.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	User loginUserInfo = (User)session.getAttribute("LOGIN_USER_INFO");

	UserJdbcDAO userjdbcDao = UserJdbcDAO.getInstance();
	userjdbcDao.removeUser(loginUserInfo.getId(), loginUserInfo.getPassword());
	
	response.sendRedirect("home.jsp?succes=complete");
	
%>