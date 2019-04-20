<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*"
         import="com.slwh.emr.service.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>住院办理</title>
<link href="../../../css/style.css" rel="stylesheet" type="text/css">

<script language="javascript">
function display1()
{
if(document.getElementById("mycheckbox1").checked == true)
{
document.getElementById("droplist1").style.display="";
}
else
{
document.getElementById("droplist1").style.display="none";
}
}
</script>
<script language="javascript">
function display2()
{
if(document.getElementById("mycheckbox2").checked == true)
{
document.getElementById("droplist2").style.display="";
}
else
{
document.getElementById("droplist2").style.display="none";
}
}
</script>
<script language="javascript">
function display3()
{
if(document.getElementById("mycheckbox3").checked == true)
{
document.getElementById("droplist3").style.display="";
}
else
{
document.getElementById("droplist3").style.display="none";
}
}
</script>

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom">住院办理</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="/ith/addIth">
    <%
      Pation pation= (Pation)request.getAttribute("pation");
      Mr mr= (Mr) request.getAttribute("mr");
      if(pation!=null&&mr!=null) {

    %>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0>
      <tr align="left" nowrap>
        <td width="78" height="24" align="center"  class=td_form01>病历号：</td>
        <td colspan="3" align="left"  class=td_form02><%=mr.getBlNum()%></td>
      </tr>
      <tr>
        <td width="146" align="center"  class=td_form01>姓名：</td>
        <td width="268" align="left"  class=td_form02><%=pation.getpName()%></td></tr>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>性别：</td>
        <td width="79" height="24" align="center"  class=td_form01><span class="td_form02">
          <%=pation.getpSex()%>
        </span></td>
      </tr>
      <tr><td width="72" align="center"  class=td_form01>年龄：</td>
        <td width="95" align="center"  class=td_form01><span class="td_form02">
            <%=pation.getpAge()%>
        </span></td></tr>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>身份证号：</td>
        <td height="24" colspan="3" align="center"  class=td_form01><span class="td_form02">
          <%=pation.getMrNum()%>
        </span></td>

      </tr>
      <tr> <td height="24" align="center"  class=td_form01>联系电话：</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
           <%=pation.getpTel()%>
        </span></td></tr>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>主治医师：</td>
        <td height="24" colspan="3" align="left" valign="middle"  class=td_form01><select name="ithUser" id="select">
         <%
           List<User> users= (List<User>)request.getAttribute("users");
          if(users!=null){
            for(User user:users){

         %>
          <option><%=user.getuName()%></option>
          <%}}%>
        </select></td>
      </tr>
      <tr>
        <td height="24" align="center"  class=td_form01>护理：</td>
        <td height="24" align="center"  class=td_form01><select name="level" id="select2">
          <%
            List<Nurse> nurses= (List<Nurse>)request.getAttribute("nurses");
            if(nurses!=null){
              for(Nurse nurse:nurses){
          %>
          <option><%=nurse.getnLevel()%></option>
          <%}}%>
        </select></td>
      </tr>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>床位分配：</td>
        <td height="24" colspan="3" align="left" valign="middle"  class=td_form01><select name="ithBed" id="select3">
          <%
            List<Bed> beds= (List<Bed>)request.getAttribute("beds");
            if(beds!=null){
              for(Bed bed:beds){

          %>
          <option><%=bed.getBedId()%></option>
          <%}}%>
        </select></td>
      </tr>
      <%--  <td height="24" align="center"  class=td_form01>支付押金：</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield7" type="text" class="input" size="50">
        </span></td>--%>
      <%--  <td height="24" align="center"  class=td_form01>xx:</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield9" type="text" class="input" size="45">
        </span></td>--%>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>病人病况：</td>
        <td height="24" colspan="5" align="left" valign="middle"  class=td_form01><label>
          <textarea name="ithMsg" id="textarea" cols="100" rows="5"></textarea>
        </label></td>
    </table>
    <br>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0 whdth='100%'>
      <tr>
        <td align="center"><input name=save  type=submit class=buttonface value= '  提交  '  onclick="self.close()">
            <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)">
          <td><input type="hidden" name="ithPatient" value="<%=pation.getpId()%>"/></td>
          <td><input type="hidden" name="pName" value="<%=pation.getpName()%>"/></td>
        </td>

      </tr>
    </table>
    <%}%>
  </form>
</center>
</body>
</html>