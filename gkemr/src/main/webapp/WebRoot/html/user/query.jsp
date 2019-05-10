<%@ page import="com.slwh.emr.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.slwh.emr.model.Role_UserKey" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户管理</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript1.2" src="../../js/stm31.js"></script>
<script>
function windowOpen(theURL,winName,features,width,hight,scrollbars,top,left) 
{
  var parameter="top="+top+",left="+left+",width="+width+",height="+hight;
  if(scrollbars=="no")
 {parameter+=",scrollbars=no";}
  else
 {parameter+=",scrollbars=yes";}
  window.open(theURL,winName,parameter);
}
</script>
<SCRIPT language=JavaScript type=text/JavaScript>

function selectAllByChk(chk,checkbox) {     
	var size = checkbox.length;
    if(size == null)
        checkbox.checked =chk.checked;
    else{
        for (i = 0; i < checkbox.length; i++) {
            checkbox[i].checked =chk.checked;
        }
	}
}

</SCRIPT>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">用户管理</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <form action="">
  <tr>
    <td align="center"><br>
        <br>
      <table width="95%"  border="0" cellspacing="2" cellpadding="0">
        <tr>
          <td></td>
          <td align="right">
            <input name="Submit" type="button" class="buttonface" onClick="javascript:window.location.href='/user/addUser'" value="新增用户">
            </td>
          </tr>
        </table>
        <table width="95%" border="0" cellpadding="2" cellspacing="0" class="table01">
          <tr>
            <td class="td_top">用户编号</td>
            <td class="td_top">姓名</td>
            <td class="td_top">年龄</td>
            <td class="td_top">性别</td>
            <td class="td_top">联系电话</td>
            <td class="td_top">电子邮箱</td>
            <td class="td_top">操作</td>
            </tr>
          <% List<User> users=(List<User>)request.getAttribute("users");
          if(users!=null){
          for(User user:users)
          { if(user.getStatus()==0){
          %>
          <tr>
            <td class="td_01"><%=user.getuNum()%></td>
            <td class="td_01"><a href="modifyinfo.jsp"><%=user.getuName()%></a></td>
            <td class="td_01"><%=user.getuAge()%></td>
            <td class="td_01"><%=user.getuSex()%></td>
            <td class="td_01"><%=user.getuTel()%></td>
            <td class="td_01"><%=user.getuEmail()%></td>
            <td class="td_01"><a href="/role/assignRole?uId=<%=user.getuId()%>">分配角色</a></td>
            </tr>
          <%}}}%>
          </table>
        </td></tr>
  </form>
</table>
</center>
</body>
</html>
