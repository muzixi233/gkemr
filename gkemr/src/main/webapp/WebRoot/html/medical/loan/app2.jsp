<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"
         import="com.slwh.emr.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>住院信息</title>
<link href="../../../css/style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">住院信息</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="/ith/medical">
    <%
      Ith ith= (Ith)request.getAttribute("ith");
      String pName=(String)request.getAttribute("pName");
      String level=(String)request.getAttribute("level");
      Date date=new Date();
      if(ith!=null&&pName!=null) {

    %>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0>
      <tr align="left" nowrap>
        <td width="100" height="24" align="center"  class=td_form01>病人姓名</td>
        <td align="left"  class=td_form02><%=pName%></td>
      </tr>
      <tr align="left" nowrap>
        <td align="center"  class=td_form01>住院号</td>
        <td align="left"  class=td_form02><%=ith.getIthNo()%></td>
      </tr>
      <tr align="left" nowrap>
        <td align="center"  class=td_form01>主治医师</td>
        <td align="left"  class=td_form02><span class="td_page">
          <%=ith.getIthUser()%>
        </span></td>
      </tr>
      <tr align="left" nowrap>
        <td align="center"  class=td_form01>护理等级</td>
        <td align="left"  class=td_form02><%=level%></td>
      </tr>
      <tr align="left" nowrap>
        <td align="center"  class=td_form01>床位</td>
        <td align="left"  class=td_form02><%=ith.getIthBed()%></td>
      </tr>
      <tr align="left" nowrap>
        <td align="center"  class=td_form01>信息</td>
        <td align="left"  class=td_form02><textarea name="textarea" cols="80" rows="4"><%=ith.getIthMsg()%></textarea></td>
      </tr>
      <tr align="left" nowrap>
      <td height="24" align="center"  class=td_form01>入住时间</td>
      <td align="left"  class=td_form02><%=date%></td>
    </tr>
    </table>
    <br>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0 whdth='100%'>
      <tr>
        <td align="center"><input name=save  type=submit class=buttonface value= '  继续办理  '  onclick="self.close()">
            <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td>
      </tr>
    </table>
    <%}%>
  </form>
</center>
</body>
</html>
