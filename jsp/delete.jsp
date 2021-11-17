<%@page import="com.project.dao.UserJdbcDAO"%>
<%@page import="com.project.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	UserJdbcDAO userjdbcDao = new UserJdbcDAO();
	userjdbcDao.removeUser(id, password);
	
	response.sendRedirect("home.jsp");
	
%>