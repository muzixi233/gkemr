<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"
         import="com.slwh.emr.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>出院申请</title>
<script language="javascript" src="../../../js/clientSideApp.js"></script>
<script language="JavaScript" type="text/javascript" src="../../../js/win_center.js"></script>
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
<link href="../../../css/style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="15"><img src="../../../images/index_32.gif" width="9" height="9"></td>
        <td valign="bottom" class="title">出院申请</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<%--<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="td_page">病历号：
      <input name="textfield" type="text" class="input">
      姓名：
      <input name="textfield2" type="text" class="input">
      <input name="Submit" type="submit" class="buttonface" value="  查询  ">
<input name="Submit" type="submit" class="buttonface" value="查询全部"></td>
  </tr>
</table>--%>
<br>
<%
  List<Pation> pations= (List<Pation>)request.getAttribute("lists");
  if(pations!=null) {
    %>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
  <tr>
    <td width="14%" class="td_top">病历号</td>
    <td width="11%" class="td_top">姓名</td>
    <td width="19%" class="td_top">申请时间</td>
    <td width="10%" class="td_top">待处理人</td>
    <td width="14%" class="td_top">状态</td>
    <td width="14%" class="td_top">详情</td>
    <td width="20%" class="td_top">操作</td>
  </tr>
<%
     for(Pation p:pations){
     if(p.getIthBanLi()==1){//已办理住院
  %>
  <tr>
    <td height="27" class="td07"><%=p.getMrNum()%></td>
    <td class="td07"><%=p.getpName()%></td>
    <td class="td07"><%=new Date()%></td>
    <td class="td07"><%=p.getDoctor()%></td>
    <td class="td07">待审核</td>
    <td class="td07"><a href="#" onClick="javascript:openwindow('/ith/cyxq?id=<%=p.getpId()%>','',500,500)">详情</a></td>
    <td class="td07"><a href="/ith/cyDeal?id=<%=p.getpId() %>" target="mainFrame"  onsubmit="return confirm('确定出院?');">&nbsp;&nbsp;出院申请</a></td>
  </tr>
 <%}}%>
</table>
<%}%>


</body>
</html>
