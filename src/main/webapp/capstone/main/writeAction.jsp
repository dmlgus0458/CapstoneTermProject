<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<% request.setCharacterEncoding("euc-kr"); %>


<%
String nick = (String)session.getAttribute("user_nick"); 
String Title = request.getParameter("Title");
String Content = request.getParameter("Content");

try {

String query = "INSERT INTO board(Title,nick, sdate, Content )  VALUES('"+Title+"','"+nick+"', now(), '"+Content+"')";
	
	stmt = conn.createStatement();
	int result = stmt.executeUpdate(query);
}

catch (SQLException ex) {
	out.println("failed. <br>");
	out.println("SQLException : " + ex.getMessage());
}

finally {
	if (stmt != null) {
		stmt.close();
	}
	if(conn != null) {
		conn.close();
	}
	/* 지정한 시간 이후에 리스트 페이지로 이동 */
	response.setHeader("Refresh", "1;URL=list.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<script type="text/javascript">
		alert("Post Uploaded.");
  </script>
</body>
</html>