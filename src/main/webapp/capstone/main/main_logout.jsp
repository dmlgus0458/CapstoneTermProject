<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<%
	//인증정보(세션삭제)
	//리다이렉트
	
	session.invalidate();
	response.sendRedirect("../login/login.jsp");
%>