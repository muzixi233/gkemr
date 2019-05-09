<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"%>
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
        <td valign="bottom" class="title">历史病历查询</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
  <tr>
    <td class="td_top">病人姓名</td>
    <td class="td_top">门诊编号</td>
    <td class="td_top">主治医生</td>
    <td class="td_top">挂号时间</td>
    <td class="td_top">挂号科室</td>
    <td nowrap class="td_top">操作</td>

  </tr>
  <%
    List<Mr> mrs= (List<Mr>)request.getAttribute("mrs");
    if(mrs!=null) {
      for(Mr mr:mrs){
  %>
  <tr>
    <td class="td07"><%=mr.getPation().getpName()%></td>
    <td class="td07"><%=mr.getPation().getMzNum()%></td>
    <td class="td07"><%=mr.getUser().getuName()%></td>
    <td class="td07"><%=mr.getDate()%></td>
    <td class="td07">骨科</td>
    <td class="td07"><a href="/patient/historyInfo?id=<%=mr.getBlId() %>"  target="mainFrame">&nbsp;&nbsp;详情</a></td>
  </tr>
  <%}}%>


</body>
</html>

