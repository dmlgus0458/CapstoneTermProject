<%@ page contentType="text/html;charset=euc-kr" import="java.sql.*" %>
<%
 request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./sign-up.css">
   
    
</head>
<body>
    <main>
        <div class="sign">
            <h1>SIGN UP</h1>
            <form action="join.jsp" onsubmit="return sendit();" method="post" name="fr">
                <div class="email">
                    <input type="text" name="email"  id="user-email" placeholder="  이메일">
                </div>
                <div class="nick">
                    <input type="text" name="nick"  id="user-nick" placeholder="  닉네임" onclick="nickCheck()" readonly>
                </div>
                <div class="pw">
                    <input type="password" name="pw"  id="user-pw" placeholder="  비밀번호">
                    <input type="password" name="pw_check"  id="user-pw-check" placeholder="  비밀번호 확인">
                </div>
                <div class="submit">
                    <input type="submit" id="sign-submit" value="Sign Up" onclick="check()">
                    <input type="button" id="sign-submit" value="Cancel" onclick="location.href='../login/login.jsp'">
                </div>
            </form>
            
        </div>
    </main>
    <script src="./sign-up.js"></script>
    <script>
        function nickCheck() {
            window.open("nickCheckForm.jsp", "nick", "width=600, height=400");
        }
    </script>
    
</body>
</html>