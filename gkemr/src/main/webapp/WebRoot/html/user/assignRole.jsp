<%@ page import="com.slwh.emr.model.User" %>
<%@ page import="com.slwh.emr.model.Role" %>
<%@ page import="java.util.List" %>
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
  <form name="form1" method="post" action="/role/roleAssign">
<table width="95%"  border="0" cellpadding="0" cellspacing="0">
  <% User user=(User) request.getAttribute("user");
    if(user!=null&&user.getStatus()==0){
  %>
  <tr>
    <td width="90" align="center" class="td_form01">用户名称</td>
    <td colspan="3" class="td_form02"><%=user.getuName()%></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">用户编号</td>
    <td colspan="3" class="td_form02"><%=user.getuNum()%></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">年龄</td>
    <td colspan="3" class="td_form02"><%=user.getuAge()%></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">性别</td>
    <td colspan="3" class="td_form02"><%=user.getuSex()%></td>
  </tr>
  <tr>
    <td width="90" align="center" class="td_form01">联系电话</td>
    <td colspan="3" class="td_form02"><%=user.getuTel()%></td>
  </tr>
  <tr>
  <td width="90" align="center" class="td_form01">电子邮箱</td>
  <td colspan="3" class="td_form02"><%=user.getuEmail()%></td>
</tr>
  <tr>
    <td class="td_form01">角色选项</td>
    <td class="td_form02" id="pdoctor"><select name="role">
      <%
        List<Role> roleList=(List<Role>)request.getAttribute("roles");
        if(roleList!=null)
          for(Role role:roleList){  %>
      <option><%=role.getrName() %></option>
      <% }%>
    </select></td>
  </tr>
</table>
  <br>
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center"><input name="Submit" type="submit" class="buttonface" value="  提交  ">
        <input  type="hidden" class="buttonface" name="uid" value="  <%=user.getuId()%>  ">
        <input name="Submit" type="submit" class="buttonface" onClick="window.close()" value="  关闭  "></td>
    </tr>
    <%}%>
  </table>
  </form>
</center>
</body>
</html>
