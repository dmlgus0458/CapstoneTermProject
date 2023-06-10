<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr" %>

  <% String id=(String)session.getAttribute("user_id"); String nick=(String)session.getAttribute("user_nick"); %>
    <% request.setCharacterEncoding("euc-kr"); %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="euc-kr" />
        <title>Document</title>
        <link rel="stylesheet" href="../main/main.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
        <link rel="stylesheet" href="./write.css">
        <link rel="stylesheet" href="../navbar/navibar.css">
      </head>

      <body>

             <div id="logo"><a href="./main.jsp"><img src="./img/gicon.png" alt=""></a></div>
              <div class="writecontainer">
                <form action="writeAction.jsp" method="post">
                  <div class="title"><input type="text" name="Title" placeholder="    게시글 제목을 작성하세요." /></div>
                    <div class="detail">상세내용을 입력하세요.<br />
                      <textarea name="Content" rows="5" cols="50"></textarea>
                    </div>
                    <br />
                    <input type="hidden" name="nick" value="<%=nick%>">
                    <input type="submit" class="submit" value="submit"/><br>
                    <input type="reset" class="submit" value="reset"/><br>
                    <input type="button" id="sign-submit" class="submit" value="Cancel" onclick="location.href='./list.jsp'">                    
                </form>
              </div>

      </body>

      </html>