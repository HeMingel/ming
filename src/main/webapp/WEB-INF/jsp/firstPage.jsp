<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<meta charset="utf-8"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/loginbideo.css"/>
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/static/images/favicon.ico" media="screen" />
<body>
<div id="container">
    <video id="background_video" loop muted></video>
    <div id="video_cover"></div>
    <div id="overlay"></div>
   <%-- <div id="video_controls">
      <span id="play">
        <img src="<%=request.getContextPath()%>/static/images/play.png">
      </span>
        <span id="pause">
        <img src="<%=request.getContextPath()%>/static/images/pause.png">
      </span>
    </div>--%>
    <section id="main_content">
        <div id="head">
            <h1>何老师的小黑屋</h1>
            <p class="sub_head">hello world</p>
            <p class="info">(本网站只作本人练手学习交流用途，如有侵权请联系angelhm@sina.cn)</p>
        </div>

        <div id="links">
            <a href="/ming/login">账号登陆</a>
            <a href="/ming/home" >访客模式</a>
        </div>
    </section>
</div>
<div id="footer">
</div>
<script src="<%=request.getContextPath()%>/static/js/bideo.js"></script>
<script src="<%=request.getContextPath()%>/static/js/login-main.js"></script>
</body>
</html>
