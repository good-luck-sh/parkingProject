<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.project.vo.User"%>
<%@page import="com.project.dao.UserJdbcDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	UserJdbcDAO userDao = UserJdbcDAO.getInstance();
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	
	if(userid == null) {
		response.sendRedirect("login.jsp?fail=empty");
		return;
	}
	if(password == null) {
		response.sendRedirect("login.jsp?fail=empty");
		return;
	}

	String userPassword = DigestUtils.sha256Hex(password);
	//비밀번호 암호화
	User user= userDao.getUserAdress(userid);
	
	if (user == null) {
		response.sendRedirect("login.jsp?fail=id");
		return;
	} 
	if(!userPassword.equals(user.getPassword())) {
		response.sendRedirect("login.jsp?fail=password");
		return;
	}
	
	session.setAttribute("LOGIN_USER_INFO", user);
	//아이디와 비밀번호 일치하면 사용자 인증이 완료됨
	response.sendRedirect("detail.jsp?success=login");
%>
