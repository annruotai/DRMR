<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/usersLogin.css">
    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />
    <script src="/js/jquery-1.3.2.min.js"></script>
    <script src="js/login.js"></script>

    <title>HY宿舍管理 Sign In</title>
</head>
<body>

<div class="header">

</div>
<div class="body">
    <div class="panel">
        <div class="top">
            <p>账户登陆</p>
        </div>

        <div class="middle">
            <form action="/login"  id="form" method="post">
                <span class="erro">${msg}</span>
                <span class="s1"></span>
                <span class="s2"></span>
                <input type="text" name="a_username" id="a_username" value=""  class="iputs"/>
                <input type="password" name="a_password" id="a_password"  value="" class="iputs"/>
                <input type="submit" value="登陆" lay-submit="" lay-filter="login"/>
            </form>
        </div>
    </div>
</div>

<div class="footer">
    <span>@Copyright © 2019-2020 版权所有 </span>
</div>
</body>
</html>
