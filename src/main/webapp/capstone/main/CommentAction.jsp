<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String nick = (String)session.getAttribute("user_nick"); 
String Content = request.getParameter("Content");
String Bno = request.getParameter("Bno");


try {

String query = "INSERT INTO comment(Bno,nick,Content,cdate)  VALUES('"+Bno+"', '"+nick+"','"+Content+"', now())";

	if(nick != null){
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(query);
		%>
			<script type="text/javascript">
		alert("Comment Uploaded.");
		var referrer = document.referrer;
		window.location.href = referrer;
	
		
  </script>
		<% 
	}
	else{

		%>
		<script type="text/javascript">
			alert("Please login to upload comment.");
			var referrer = document.referrer;
			window.location.href = referrer;
	  </script>

	<% 
	}
}
catch (SQLException ex) {
	out.println("comments. <br>");
	out.println("SQLException : " + ex.getMessage());
}

finally {
	if (stmt != null) {
		stmt.close();
	}
	if(conn != null) {
		conn.close();
	}

	
}
response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");
%>

