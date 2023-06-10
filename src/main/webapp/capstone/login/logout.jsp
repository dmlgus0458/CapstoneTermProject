<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<%
	//��������(���ǻ���)
	//�����̷�Ʈ
	
	session.invalidate();
	response.sendRedirect("../main/main.jsp");
%>