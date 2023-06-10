<%@ page contentType="text/html;charset=euc-kr" import="java.sql.*" %>
<%
 request.setCharacterEncoding("utf-8");  //Set encoding
 String id  =        request.getParameter("id");  
 String email =     request.getParameter("email");    
 String nick =     request.getParameter("nick");       
 String pw =   request.getParameter("pw");
 String pw_check =   request.getParameter("pw_check");
 

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:3306/capstone";
  Connection con = DriverManager.getConnection(url,"root","rena0458");
  Statement stat = con.createStatement();

  String query = "INSERT INTO user(email,nick,pw,pw_check)  VALUES('"+email+"','"+nick+"','"+pw+"','"+pw_check+"')";

  stat.executeUpdate(query);
	%>
	<script type="text/javascript">
		alert("Thanks for Sign up.");
</script>

<% 
  stat.close();
  con.close();
  %>

<% 
 }
 catch(Exception e){
  out.println( e );
 }

	response.setHeader("Refresh", "1;URL=../login/login.jsp");

%>

