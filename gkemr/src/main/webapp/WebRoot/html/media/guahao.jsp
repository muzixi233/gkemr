<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"
         import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>病人挂号</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
  <script language="JavaScript" src="../../js/jquery2.js"></script>
  <script src="../../js/cloud.js" type="text/javascript"></script>
  <script language="javascript" src="../../js/js.js"></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">门诊挂号</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="/patient/addPatient">
    <table width="95%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="90" height="24" class="td_form01">姓名</td>
        <td class="td_form02"><input type="text" name="pName" class="input"  id="pname"/></td>

      </tr>
      <tr>
        <td width="90" class="td_form01">性别</td>
        <td class="td_form02" id="psex">
          <input type="radio" name="pSex" value="男"/>男
          <input type="radio" name="pSex" value="女"/>女
        </td>
      </tr>
      <tr>
        <td class="td_form01">年龄</td>
        <td class="td_form02"><input type="text" class="input"  name="pAge" id="pbirthday"/></td>
      </tr>
    </table>    
   
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="90" class="td_form01">证件号</td><%--//作病历编号--%>
        <td class="td_form02"><input name="mrNum" type="text" class="input" id="pcard"></td>
      </tr>
      <tr>
        <td class="td_form01">联系电话</td>
        <td class="td_form02"><input name="pTel" type="text" class="input" ></td>
      </tr>
      <%--<tr>
        <td rowspan="2" class="td_form01">初复诊</td>&lt;%&ndash;//状态  初诊/复诊&ndash;%&gt;
        <td class="td_form02"><input type="radio" name="status" value="radiobutton">
          初诊</td>
      </tr>
      <tr>
        <td class="td_form02"><input type="radio" name="status" value="radiobutton">
          复诊           病历号：
          <input name="mr_num1" type="text" class="input"></td>
      </tr>--%>
     <tr>
        <td class="td_form01">门诊编号</td>
        <td class="td_form02">
          <input name="mzNum" type="text" class="input" size="30" >
        </td>
      </tr>

      <tr>
          <td class="td_form01">选医生挂号</td>
        <td class="td_form02" id="pdoctor"><select name="doctor">
          <%
              List<User> doctors=(List<User>)request.getAttribute("users");
              if(doctors!=null)
         for(User user1:doctors){  %>
            <option><%=user1.getuName() %></option>
            <% }%>
        </select></td>
      </tr>
      <%--<tr>
        <td class="td_form01">发表时间</td>
        <td class="td_form02">
          <input name="PARA_YM_NOW" type="text" class="input"   id="PARA_YM_NOW" next="A001014" alt="查询年月|0|d|||" value="" onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" onBlur="matchInput(this)" readonly>
          <input name="button" type="button"  class="button_select" onClick="fPopUpCalendarDlg('PARA_YM_NOW')">        </td>
      </tr>--%>
      <tr>
      <td class="td_form01">联系地址</td>
      <td class="td_form02"><input name="address" type="text" class="input" id="paddress"></td>
    </tr>
    </table>
    <br>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0 whdth='100%'>
      <tr>
        <td align="center"><input name=save type="submit" class=buttonface value= '  提交  '  >
            <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td>
      </tr>
    </table>
  </form>
</center>
<%--<script type="text/javascript">
  function addtreat() {
    var uNum = $('#uNum').val();

    $.ajax({
      type: "get",
      url: "/treat/addTreat",
      data: {},
      async: true,
      dataType: 'json',
      success: function (data) {
        var json = data.data;
        if (data.data!=null) {
          $('#tb tr:gt(0)').remove();//删除之前的数据
          var s = '';
          s += '<tr><td class="td_01">' + json.uNum + '</td><td class="td_01">' + json.uName + '</td><td class="td_01">' + json.uAge + '</td>'
                  + '<td class="td_01"><a href="/user/results/moreleavelist_1?uId='+json.uId+'" target="mainFrame" >&nbsp;&nbsp;>>></a></td></tr>';
          $('#tb').append(s);
        }
        else {
          alert("没有数据")
        }

      }
    });
  }
</script>--%>
</body>
</html>
