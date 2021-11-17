<%@page import="java.sql.SQLException"%>
<%@page import="com.project.vo.User"%>
<%@page import="com.project.dao.UserJdbcDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	UserJdbcDAO userDao = new UserJdbcDAO();
	
	String id = request.getParameter("userid");
	String password = request.getParameter("password");
	User user= userDao.getUserAdress(id,password);
	if (user == null) {
		response.sendRedirect("loginRegister.jsp");
	} else {
		response.sendRedirect("detail.jsp?id="+request.getParameter("userid")+"&password="+request.getParameter("password"));
	}
	
	
%>
