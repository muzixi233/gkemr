<%@ page import="com.slwh.emr.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.slwh.emr.model.Role" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>角色管理</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../../js/clientSideApp.js"></script>
<script language="javascript">
CSApp = parent.CSApp;
</script>
</head>
<% List<User> user = (List<User>)request.getAttribute("user");
  Role role = (Role)request.getAttribute("role");
%>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">角色管理</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <br>
  <table width="95%"  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="right" class="td_page"><input name="Submit" type="button" class="buttonface02" onClick="location.href='rolelist.jsp'" value="  返回  "></td>
    </tr>
  </table>
  <br>
  <table width="95%" border="0" cellspacing="2" cellpadding="0">
    <tr>
      <td class="td_title">分配了<%=role.getrName()%>角色的所有用户</td>
    </tr>
  </table>
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
    <tr>
      <td nowrap class="td_top">姓名</td>
      <td nowrap class="td_top">年龄</td>
      <td nowrap class="td_top">性别</td>
      <td nowrap class="td_top">联系电话 </td>
      <td nowrap class="td_top">工作邮箱</td>
      <td nowrap class="td_top">医生编号 </td>
      <td nowrap class="td_top">角色信息 </td>
      </tr>
      <%for(User user1:user){%>
      <tr>
        <td class="td_01"><%=user1.getuName()%></td>
        <td class="td_01"><%=user1.getuAge()%></td>
        <td class="td_01"><%=user1.getuSex()%></td>
        <td class="td_01"><%=user1.getuTel()%></td>
        <td class="td_01"><%=user1.getuEmail()%></td>
        <td class="td_01"><%=user1.getuNum()%></td>
        <td class="td_01"><%=role.getrName()%></td>
      </tr>
      <%}%>
  </table>
</center>
</body>
</html>
