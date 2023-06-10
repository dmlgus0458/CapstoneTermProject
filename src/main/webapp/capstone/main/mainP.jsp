<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>

<%
request.setCharacterEncoding("utf-8"); 
String nick = (String)session.getAttribute("user_nick"); 
%>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <title>Webpage</title>
    <meta charset="EUC-KR" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="./main.css" />
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#nav ul.sub").hide();
		$("#nav ul.menu li").click(function(){
			$("ul",this).slideToggle("fast");
		});
	});
</script>
	
  </head>
  <body>

<div id="sidebar" class="sidebar">
     <%
           if (nick == null){
      %>
    <header id="header">
        <span><a href="../login/login.jsp">로그인</a></span>
      <span> | </span>
      <span><a href="../sign_up/sign-up.jsp">회원가입</a></span>
    </header>
      <%
           }else{
      %>
     <header id="header">
      <div class="nickname">
      <%=nick %>님 ▼
      <div class="dropdown-content">
        <a href="./main_logout.jsp">로그아웃</a>
      </div>
      </div>
    </header>
      <% 
           }
       %>
<div id="nav">
		<ul class="menu">
			<li ><a class="About" href="./main.jsp">About</a>
			</li>
			<li><a href="#">Projects</a>
				<ul class="sub">
					<li><a href="./rc.jsp">RC Car</a></li>
					<li><a href="./webpage.jsp"">Webpage</a></li>
				</ul>
			</li>
			<li><a href="#">Board</a>
				<ul class="sub">
					<li><a href="./list.jsp">Lists</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>