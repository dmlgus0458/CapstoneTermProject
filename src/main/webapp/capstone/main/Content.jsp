<%@ include file="mainP.jsp" %>
<div id="listcontent-area">
  <div class="contents">
<%
	String Bno = request.getParameter("Bno");
	String sql2 = "select * from board where Bno= " + Bno;
	stmt = conn.prepareStatement(sql2);
	ResultSet rs2 = stmt.executeQuery(sql2); 
	while (rs2.next()) {
%>	

    <h1> <span><%= rs2.getString("Title")%></span></h1>
	<a><p style="font-size:16px; float: right;"><strong><%= rs2.getString("nick") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= rs2.getString("sdate") %></strong></p></a>
	  <div class="listcontent">
   		 <%= rs2.getString("Content") %>
     </div>

	</div>
</div>
  <%
	}
  %>
  <div id="comment-area">
<%
String sql = "select * from comment where Bno= "+ Bno; 
	pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
while(rs.next()){
%>

  <div id="comment_table_div">
        <table cellpadding=1 class="comment_table">
            <tr>
                <td style="font-weight: 800;">
                    [<%= rs.getString("nick") %>]
                </td>
                <td class="comment_table_content">
                    <div><%= rs.getString("Content") %></div>
                </td>
                <td align=center><%= rs.getString("cdate") %></td>
                <td class="deletebox">
                    <form action="./Comment_delete.jsp" method="post" id="comment_delete">
                        <div>
                            <input type="submit" value="X" class="delete">
                            <input type="hidden" name="Cno" value="<%=rs.getString("Cno")%>"><br>                          
                        </div>
				</form>
                </td>
            </tr>
        </table>
     </div>
  
<%
		}
		
%>
<div class="bottom">
<div class="writeComment">
    <form action="./CommentAction.jsp" method="post">
        <div id="comment"> 
          <textarea name="Content" rows="5" cols="50" placeholder="Enter your comment here.. "></textarea>
          <br><input class="comment_register" type="submit" value="leave comment">
          <input type="hidden" name="Bno" value="<%= Bno %>">
        </div>
    </form>
	</div>
  </div>  
</div>
     
  </body>
</html>