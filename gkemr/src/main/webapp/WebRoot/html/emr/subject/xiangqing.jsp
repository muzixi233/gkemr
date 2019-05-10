<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>病历详细信息</title>
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
        <td valign="bottom" class="title">病历详细信息</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>

<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <%
        Pation pation= (Pation)request.getAttribute("p");
        Mr mr = (Mr) request.getAttribute("mr");
        List<Drug> drugs = (List<Drug>) request.getAttribute("drug");
        if(pation!=null) {
    %>
   <tr>
     <td width="90" height="24" class="td_form01">姓名</td>
       <td class="td_form02"><%=pation.getpName()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">性别</td>
        <td class="td_form02"><%=pation.getpSex()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">年龄</td>
        <td class="td_form02"><%=pation.getpAge()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">电话</td>
        <td class="td_form02"><%=pation.getpTel()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">病历编号</td>
        <td class="td_form02"><%=pation.getMrNum()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">门诊编号</td>
        <td class="td_form02"><%=pation.getMzNum()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">挂号时间</td>
        <td class="td_form02"><%=pation.getDate()%></td>
   </tr>	
    <tr>
           <td height="24" class="td_form01">看诊医生</td>
           <td class="td_form02"><%=pation.getDoctor()%></td>
   </tr>
    <tr>
    <td height="24" class="td_form01">诊断病因</td>
    <td class="td_form02"><%=mr.getBlStyle()%></td>
</tr>
    <tr>
        <td height="24" class="td_form01">开药信息</td>
        <td class="td_form02"  >
        <%
            if(drugs!=null)
                for(Drug drus:drugs){  %>
        <span><%=drus.getDrName()%>
        <% }%>
        </td>
    </tr>
</table>
</div>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <td align="center">
        <input name=cancel  type=button  value= '  打印  '  onClick="aa()">
        <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td></tr>
        <%}%>
</table>
<script language="javascript">

    function aa(){
        $("#ddd").jqprint();
    }
</script>
</body>
</html>
