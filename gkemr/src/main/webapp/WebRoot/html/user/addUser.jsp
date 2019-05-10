<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户管理</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">新建用户</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="/user/userAdd" onsubmit="return confirm('确认增加?');">
<table width="95%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="90" align="center" class="td_form01">用户名称</td>
    <td colspan="3" class="td_form02"><input name="uName" type="text" class="input"></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">用户密码</td>
    <td colspan="3" class="td_form02"><input name="uPassword" type="password" class="input"></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">用户编号</td>
    <td colspan="3" class="td_form02"><input name="uNum" type="text" class="input"></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">年龄</td>
    <td colspan="3" class="td_form02"><input name="uAge" type="text" class="input"></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">性别</td>
    <td colspan="3" class="td_form02"><input name="uSex" type="text" class="input"></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">联系电话</td>
    <td colspan="3" class="td_form02"><input name="uTel" type="text" class="input"></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">电子邮箱</td>
    <td colspan="3" class="td_form02"><input name="uEmail" type="text" class="input"></td>
  </tr>
</table>
  <br>
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center"><input name="Submit" type="submit" class="buttonface" value="  增加  ">
        <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td>
    </tr>
  </table>
  </form>
</center>
</body>
</html>
