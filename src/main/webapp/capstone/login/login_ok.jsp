<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html;charset=euc-kr;");
	request.setCharacterEncoding("euc-kr");     
	String nick = request.getParameter("nick");
	String pw = request.getParameter("pw");
    
	String url = "jdbc:mysql://localhost:3306/capstone";
	String uid = "root";
	String upw = "rena0458";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from user where nick = ? and pw = ?";
	
	try{
	
		Class.forName("com.mysql.jdbc.Driver");
		
	
		conn = DriverManager.getConnection(url, uid, upw);
		
	
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, nick);
		pstmt.setString(2, pw);
		
	
		rs = pstmt.executeQuery();
		
		if(rs.next()){ 
			//String nick = rs.getString("nick");
			session.setAttribute("user_nick", nick);
			response.sendRedirect("../main/main.jsp");		
			
		} else{
			response.sendRedirect("login_fail.jsp"); 
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("login.jsp");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
 %>