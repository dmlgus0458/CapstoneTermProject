
<%@ include file="mainP.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
<link rel="stylesheet" href="./list.css">
</head>
<body>
<%
    String sql = "select * from board";
    int rowCount = 0;

    try {
        pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
%>

<div id="logo"><a href="../main/main.jsp"><img src="./img/logo.png" alt=""></a></div>

<%--       <%@ include file="../search/search.jsp" %>	 --%>
	<br>
<div class="list">	
  <table cellpadding=1>
    <tr class="head">
      <th width=200>Title</th>
      <th width=80>nick</th>
      <th width=150>uptime</th>
    </tr>
    <%
    while (rs.next()) {
  %>

  <tr class="table_ing" onclick="location.href='Content.jsp?Bno=<%= rs.getString("Bno") %>'" style="cursor: pointer">
        <td align=center><%= rs.getString("Title") %></td>
        <td align=center><%= rs.getString("nick") %></td>
        <td align=center><%= rs.getString("sdate") %></td>
    </tr> 

    <%
        }
    %>
   

    <%
    }
    catch(Exception e) {
    	out.println("error. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(conn != null) conn.close();
    }
%>

</table>
 </div>   
    <span class="write">
	<input type="button" id="sign-submit" value="post" onclick="location.href='./write.jsp'">
    </span>
</body>
</html>