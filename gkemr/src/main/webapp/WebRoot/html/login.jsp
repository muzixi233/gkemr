<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>用户登录</title>
  <link href="../css/sty.css" rel="stylesheet" type="text/css" />
  <script language="JavaScript" src="../js/jquery2.js"></script>
  <script src="../js/cloud.js" type="text/javascript"></script>
  <script language="javascript" src="../js/js.js"></script>

</head>

<body style="background-color:#1c77ac; background-image: url(../images/light.png) background-repeat:no-repeat; background-position:center top; overflow:hidden;">
<div id="mainBody">
  <div id="cloud1" class="cloud"></div>
  <div id="cloud2" class="cloud"></div>
</div>

<div class="logintop"> <span>欢迎登录骨科医院电子病历系统</span>
  <ul>
    <li><a href="index.jsp">返回首页</a></li>
  </ul>
</div>
<div class="loginbody"> <span class="systemlogo"></span>
  <div class="loginbox">
    <form action="" method="post" >
      <ul>
        <li>
          <input id="username" name="username" type="text" class="loginuser" />
        </li>
        <li>
          <input id="password" name="password" type="password" class="loginpwd" />
        </li>
        <li>
          <input name="loginy" type="text" class="loginy" placeholder="输入验证码"/><label><img src="../images/images.jpg" /></label>
        </li>
        <li>
          <input name="button" type="submit" class="loginbtn" value="登录" />
        </li>
      </ul>
    </form>
  </div>
</div>
<div class="loginbm">版权所有： 666小组 © Copyright 2014 - 2015.</div>


<script type="text/javascript">
  $("#btn").click(function(){
    $.ajax({
      type: "get",
      url: "/user/login",
      data: {
        username:$("#username").val(),
        password:$("#password").val()
        },
      async: false,
      dataType: 'json',
      success: function (data) {
        alert(data.data.uName);
        if (data.data!=null) {
          window.location.href = "index";
         }
        else {
          alert("账号或密码错误")
        }

    }
  });
  })
</script>
</body>
</html>
