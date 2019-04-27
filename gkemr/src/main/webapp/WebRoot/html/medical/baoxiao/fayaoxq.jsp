<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>病人诊断</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
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
        <td valign="bottom" class="title">开药</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<%
    Pation pation= (Pation)request.getAttribute("p");
    Mr mr = (Mr) request.getAttribute("mr");
    if(pation!=null) {
%>
<form name="form1" method="post" action="/patient/treatp?pId=<%=pation.getpId() %>">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

   <tr>
     <td width="90" height="24" class="td_form01">姓名</td>
     <td class="td_form02" name="pName"><%=pation.getpName()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">性别</td>
        <td class="td_form02" name="pSex"><%=pation.getpSex()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">年龄</td>
        <td class="td_form02" name="pAge"><%=pation.getpAge()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">电话</td>
        <td class="td_form02" name="pTel"><%=pation.getpTel()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">病历编号</td>
        <td class="td_form02" name="mrNum"><%=pation.getMrNum()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">门诊编号</td>
        <td class="td_form02" name="mzNum"><%=pation.getMzNum()%></td>
   </tr>	
      <tr>
        <td height="24" class="td_form01">挂号时间</td>
        <td class="td_form02" name="date"><%=pation.getDate()%></td>
   </tr>	
         <tr>
           <td height="24" class="td_form01">看诊医生</td>
           <td class="td_form02" name="pDoctor"><%=pation.getDoctor()%></td>
   </tr>
    </tr>ll
    <tr>
        <td height="24" class="td_form01">诊断病因</td>
        <td class="td_form02" name="bl_style"><%=mr.getBlStyle()%></td>
    </tr>
    <tr>
        <td height="24" class="td_form01">是否住院</td>
        <td class="td_form02" name="status1"><select name="status1">
            <option value="1">是</option>
            <option value="0">否</option>
        </select></td>
    </tr>
    <tr>
        <td height="24" class="td_form01">病历编号</td>
        <td class="td_form02" name="mr_num"><%=mr.getBlNum()%></td>
    </tr>
    <tr>
        <td height="24" class="td_form01">开具药品</td>
        <td class="td_form02" name="drug"><select name="status1" multiple="multiple">
            <option value="1">是</option>
            <option value="2">否</option>
            <option value="3">否</option>
            <option value="4">否</option>
        </select></td>
    </tr>
    <tr>
    <td align="center">
        <td align="center"><input name=save type="submit" class=buttonface value= '  提交  '  >
        <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td></tr>
        <%}%>
</table>
</form>
<script type="text/javascript">

    $('#checkedLevel').multipleSelect({
        addTitle: true, //鼠标点悬停在下拉框时是否显示被选中的值
        name: "质控级别",
        selectAllText: "选择全部", //选择全部的复选框的text值
        allSelected: "全部", //全部选中后显示的值
        //delimiter: ', ', //多个值直接的间隔符，默认是逗号
        placeholder: "质控级别" //不选择时下拉框显示的内容
    });
</script>
</body>
</html>
