<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"%>
<%@ page import="org.apache.shiro.session.Session" %>
<%@ page import="org.apache.shiro.SecurityUtils" %>
<%   Session session1= SecurityUtils.getSubject().getSession();
  User user=(User)session1.getAttribute("user");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查询结果</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../../js/check.js"></script>
<script language="javascript" src="../../js/checkAll.js"></script>
<script language="javascript" src="../../js/clientSideApp.js"></script>
  <script language="JavaScript" src="../../js/jquery2.js"></script>
  <script src="../../js/cloud.js" type="text/javascript"></script>
  <script language="javascript" src="../../js/js.js"></script>
<SCRIPT language=JavaScript type=text/JavaScript>
function windowOpen(theURL,winName,features,width,hight,scrollbars,top,left) 
{
  var parameter="top="+top+",left="+left+",width="+width+",height="+hight;
  if(scrollbars=="no")
 {parameter+=",scrollbars=no";}
  else
 {parameter+=",scrollbars=yes";}
  window.open(theURL,winName,parameter);
}
</SCRIPT>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
        <td valign="bottom" class="title">待审核病历</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<form name="form1" method="post" action="/patient/patientSelect" onsubmit="return confirm('确定提交?');">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td class="td_page">输入病历编号：
    <input type="text" class="input"  name="Num" id="pbirthday"/><!--<input type="button"  class="button_select" onClick="fPopUpCalendarDlg('PARA_YM_NOW')"> -->
   病人姓名：<input name="pName" size="10" type="text" class="input" ><!--<input type="button"  class="button_select" onClick="fPopUpCalendarDlg('PARA_YM_NOW2')"> -->
    <input name="Submit" type="submit" class="buttonface" value=" 查询 "></td>
  </tr>
</table>
</form>
<br>
<% if(user!=null&&!user.getuName().equals("李四"))
{
%>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
  <tr>
    <td class="td_top">病人姓名</td>
    <td class="td_top">病历编号</td>
    <td class="td_top">实习医生</td>
    <td class="td_top">挂号时间</td>
    <td class="td_top">挂号科室</td>
    <td class="td_top">审核医生</td>
    <td nowrap class="td_top">操作</td>

  </tr>
  <%
    List<Mr> mrs= (List<Mr>)request.getAttribute("mrs");
        if(mrs!=null) {
          for(Mr mr:mrs){
            if(mr.getStatus()==0){
              System.out.println("********************"+mr.getStatus());
  %>
  <tr>
    <td class="td07"><%=mr.getPation().getpName()%></td>
    <td class="td07"><%=mr.getBlNum()%></td>
    <td class="td07"><%=mr.getPation().getDoctor()%></td>
    <td class="td07"><%=mr.getPation().getDate()%></td>
    <td class="td07">骨科</td>
    <td class="td07">当前医生</td>
    <td class="td07"><a href="/patient/YShenHe?id=<%=mr.getBlId() %>" target="mainFrame">&nbsp;&nbsp;审核</a></td>
  </tr>
  <%}}}%>

  <%}else{%>
  <tr>病历待审核</tr>
  <%}%>
</table>
<table width="95%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
  <tr>
    <td height="30" align="right"><img src="../../images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="../../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="../../images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="../../images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 1 页 1 条记录</td>
  </tr>
</table>
</body>
</html>

