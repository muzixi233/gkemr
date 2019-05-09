<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>进药信息</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">提交进药信息</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="/drug/insert" onsubmit="return confirm('确定新增此药品?');">
    <table width="95%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="90" height="24" class="td_form01">负责人</td>
        <td class="td_form02">张洁</td>
        <td width="90" class="td_form01">性别</td>
        <td class="td_form02">男</td>
      </tr>
      <tr>
        <td height="24" class="td_form01">部门</td>
        <td class="td_form02">药房管理</td>
        <td class="td_form01">工号</td>
        <td class="td_form02">1101</td>
      </tr>
    </table>    
   
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="90" class="td_form01">药物名称</td>
        <td class="td_form02"><input name="dr_name" type="text" class="input"></td>
      </tr>
      <tr>
        <td class="td_form01">药物总量</td>
        <td class="td_form02"><input name="dr_account" type="text" class="input" size="30"></td>
      </tr>
      <tr>
        <td class="td_form01">药物总价</td>
        <td class="td_form02"><input name="dr_price" type="text" class="input" size="30"></td>
      </tr>
      <tr>
        <td class="td_form01">药品编号</td>
        <td class="td_form02">
          <input name="dr_num" type="text" class="input">
        </td>
      </tr>
      <tr>
        <td class="td_form01">药物限制</td>
        <td class="td_form02"><select name="dr_level">
          <option value="0">普通</option>
          <option value="1">禁药</option>
        </select></td>
      </tr>
    </table>
    <br>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0 whdth='100%'>
      <tr>
        <td align="center"><input name=save  type="submit" class=buttonface value= '  提交  '  >
            <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td>
      </tr>
    </table>
  </form>
</center>
</body>
</html>
