<%@ include file="mainP.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="content-area">
  <div class="contents">
	
    <h1>Webpage Project</h1>
    <h4>Introduction</h4>
     <a>This Webpage design for introduce <strong>Rc Car project.</strong></a>
     <span>The page is description of Webpage and You can fine source code in git repository.</span>
     <a href="https://github.com/dmlgus0458/CAPSTONEProject"><img src="../img/gicon.png" style="width: 50px; height: 50px;"></a>
    <h4>Configure Acquisition</h4>
    <span>OS : Windows</span>
	<span>WEB/WAS : Tomcat</span>
	<span>DBMS : MySQL</span>	
    <span>Languague : Java</span>
    <span>IDE : Eclipse</span> 
    <h4>DB UML</h4>
	<span><img src="../img/db uml.png"></span>
	</div>

</div>
  
  <div id="comment-area">
<%
String sql = "select * from comment where Bno= -2"; 
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
          <input type="hidden" name="Bno" value="-2">
        </div>
    </form>
	</div>
  </div>  
</div>
     
  </body>
</html>