<%--
  Created by IntelliJ IDEA.
  User: Ming
  Date: 2017-5-4
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/static/images/favicon.ico" media="screen" />
    <link href="<%=request.getContextPath()%>/static/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.tips.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/login.js"></script>
<script type="text/javascript">
    function checkLoginInfo() {
        //alert("here");
        if ("" == $("#username").val()) {
            $("#username").tips({
                side: 2,
                msg: '用户名不得为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#username").focus();
            return false;
        }
        if ($("#password").val() == "") {

            $("#password").tips({
                side: 2,
                msg: '密码不得为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#password").focus();
            return false;
        }
        return true;
    }

    function webLogin() {
        if (checkLoginInfo()) {
            var username = $("#username").val();
            var password = $("#password").val();
            console.log(password);
            $.ajax({
                type: "POST",
                url: '<%=request.getContextPath()%>/ming/loginPage',
                data: {username:username,password:password},
                dataType: 'json',   //当这里指定为json的时候，获取到了数据后会自己解析的，只需要 返回值.字段名称 就能使用了
                cache: false,
                success: function (data) {
                    if (data.code == 1) {
                        window.location.href = data.data.nextUrl;
                    } else {
                        $("#errormsg").html(data.msg).fadeIn(2000).fadeOut(2000);
                        $("#password").val("");
                        $("#username").focus();

                    }
                }
            });
        }


    }
</script>
<body background="<%=request.getContextPath()%>/static/images/loginBG.jpg">
<div class="login-form">
    <h1>Login</h1>
    <div class="form-group ">
        <input type="text" class="form-control" placeholder="Username " id="username">
        <i class="fa fa-user"></i>
    </div>
    <div class="form-group log-status">
        <input type="password" class="form-control" placeholder="Password" id="password">
        <i class="fa fa-lock"></i>
    </div>
    <span class="alert" id="errormsg"></span>
    <a class="link" href="javascript:void(0)">Lost your password?</a>
    <button type="button" class="log-btn" onclick="webLogin()">Log in</button>
</div>
<embed src="//music.163.com/outchain/player?type=2&id=5297149&auto=1&height=66" hidden="true" autostart="true" loop="true">
</body>
</html>
