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
    <table width="95%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="td_page">姓名：<input name="queryName" type="text" alt="姓名|0|s" id=10 next=15 onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" class="input"  size="40" >
          <div style="display:none">
            <input type="text">
            </div>
              <input name="simple" type="button"  id=15  next=20   class="buttonface02" value="  查询  "  >
          <input name="advance" type="button" id=20 class="buttonface"  value="高级查询">
          <input name="viewsys" type="button"  class="buttonface" onClick="javascript:window.location.href='syslist.jsp'" value="查看系统管理员">
          </td>
        </tr>
      </table>
        <br>
      <table width="95%"  border="0" cellspacing="2" cellpadding="0">
        <tr>
          <td align="right"><input name="Submit" type="button" class="buttonface" onClick="windowOpen('/user/query','','','340','270','no','50','50')" value="分配角色">
            <input name="Submit" type="button" class="buttonface" onClick="javascript:window.location.href='/user/addUser'" value="新增用户">
            </td>
          </tr>
        </table>
        <table width="95%" border="0" cellpadding="2" cellspacing="0" class="table01">
          <tr>
            <td class="td_top"><input name="chk" type="checkbox" id="chk" onClick="selectAllByChk(chk,checkbox)" value="checkbox0"></td>
            <td class="td_top">用户编号</td>
            <td class="td_top">姓名</td>
            <td class="td_top">年龄</td>
            <td class="td_top">性别</td>
            <td class="td_top">联系电话</td>
            <td class="td_top">电子邮箱</td>
            <td class="td_top">角色名称</td>

            </tr>
          <% List<Role_UserKey> userKeys=(List<Role_UserKey>)request.getAttribute("userKeys");
          if(userKeys!=null){
          for(Role_UserKey role_userKey:userKeys)
          {
          %>
          <tr>
            <td class="td_01"><span class="td01">
              <input name="checkbox" type="checkbox" id="checkbox" value="checkbox01">
              </span></td>
            <td class="td_01"><%=role_userKey.getUser().getuNum()%></td>
            <td class="td_01"><a href="modifyinfo.jsp"><%=role_userKey.getUser().getuName()%></a></td>
            <td class="td_01"><%=role_userKey.getUser().getuAge()%></td>
            <td class="td_01"><%=role_userKey.getUser().getuSex()%></td>
            <td class="td_01"><%=role_userKey.getUser().getuTel()%></td>
            <td class="td_01"><%=role_userKey.getUser().getuEmail()%></td>

            <td class="td_01"><%=role_userKey.getRole().getrName()%></td>

            </tr>
          <%}}%>
          </table>
        </td></tr>
  </form>
</table>
</center>
</body>
</html>
