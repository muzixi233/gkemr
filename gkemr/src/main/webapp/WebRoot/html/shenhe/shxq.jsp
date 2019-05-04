<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>审核详细信息</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" src="../../js/jquery2.js"></script>
    <script src="../../js/cloud.js" type="text/javascript"></script>
    <script language="javascript" src="../../js/js.js"></script>
    <script language="javascript" src="../../js/jquery-1.4.4.min.js"></script>
    <script language="javascript" src="../../js/jquery.jqprint-0.3.js"></script>
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
<div id="ddd">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
        <td valign="bottom" class="title">审核详细信息</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
    <%
        Pation pation= (Pation)request.getAttribute("patient");
        User user = (User) request.getAttribute("user");
        Drug drugs = (Drug) request.getAttribute("drug");
        Mr mr = (Mr) request.getAttribute("mr");
        if(pation!=null) {
    %>
<form  method="post" action="/drug/shenhe2?pId=<%=pation.getpId()%>&uId=<%=user.getuId()%>">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

   <tr>
     <td width="90" height="24" class="td_form01">病人姓名</td>
       <td class="td_form02"><%=pation.getpName()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">病人性别</td>
        <td class="td_form02"><%=pation.getpSex()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">病人年龄</td>
        <td class="td_form02"><%=pation.getpAge()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">医生姓名</td>
        <td class="td_form02"><%=user.getuName()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">医生编号</td>
        <td class="td_form02"><%=user.getuNum()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">所开禁药</td>
        <td class="td_form02"><%=drugs.getDrName()%></td>
   </tr>	

    <tr>
    <td height="24" class="td_form01">诊断病因</td>
    <td class="td_form02"><%=mr.getBlStyle()%></td>
</tr>
    <tr>
        <td height="24" class="td_form01">开药审核</td>
        <td height="24" class="td_form02"> <select name="shenhe">
            <option value="1">同意</option>
            <option value="0">拒绝</option>
        </select>
        </td>
    </tr>
</table>


<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <td align="center">
        <input name=cancel  type="submit"  value= '  提交  '/>
        <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td></tr>
        <%}%>
</table>
</form>
</div>
</body>
</html>
