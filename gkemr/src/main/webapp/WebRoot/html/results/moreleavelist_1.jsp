<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.slwh.emr.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%  String uId= (String) request.getAttribute("uId");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>医生详细信息</title>
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
        <td valign="bottom" class="title">医生详细信息</td>
      </tr>
    </table></td>
  </tr>
</table>
<br>


<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="tb">
</table>
<script type="text/javascript">
    window.onload =function GetDoctor() {
        var uId  = <%=uId %>;
        $.ajax({
            type: "get",
            url: "/user/selectById",
            data: {uId:uId},
            async: true,
            dataType: 'json',
            success: function (data) {
                var json = data.data;
                if (data.data!=null) {
                    $('#tb tr:gt(0)').remove();//删除之前的数据
                    var s = '';
                    s += '<tr><td width="90" height="24" class="td_form01">医生编号</td><td class="td_form02">' + json.uNum + '</td></tr>' +
                        '<tr><td width="90" height="24" class="td_form01">医生ID</td><td class="td_form02">' + json.uId + '</td></tr>' +
                        '<tr> <td height="24" class="td_form01">医生姓名</td><td class="td_form02">' + json.uName + '</td></tr>' +
                    '<tr><td height="24" class="td_form01">医生年龄</td><td class="td_form02">' + json.uAge + '</td></tr>' +
                    '<tr><td height="24" class="td_form01">医生性别</td><td class="td_form02">' + json.uSex + '</td></tr>' +
                    '<tr><td height="24" class="td_form01">医生电话</td><td class="td_form02">' + json.uTel + '</td></tr>' +
                    '<tr><td height="24" class="td_form01">医生邮箱</td><td class="td_form02">' + json.uEmail + '</td></tr>' +
                    '<tr> <td height="24" class="td_form01">医生级别</td><td class="td_form02">' + json.status + '</td></tr>' +
                       ' <tr> <td height="24" class="td_form01">医生格言</td><td class="td_form02">病人的笑颜是我最开心的事</td> </tr>';
                    $('#tb').append(s);
                }
                else {
                    alert("没有数据")
                }

            }
        });
    }
</script>

</body>
</html>
