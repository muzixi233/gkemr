<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>我的成果</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="../../js/win_center.js"></script>
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
        <td valign="bottom" class="title">医生信息</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="td_page">医生编号：
      <input name="PARA_YM_NOW" size="20" type="text" class="input"   id="PARA_YM_NOW" next="A001014" alt="查询年月|0|d|||" value="" onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" onBlur="matchInput(this)" readonly>
      <input name="Submit2" type="submit" class="buttonface" value="  查询  ">
姓名
<input name="PARA_YM_NOW1" size="20" type="text" class="input"   id="PARA_YM_NOW" next="A001014" alt="查询年月|0|d|||" value="" onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" onBlur="matchInput(this)" readonly>
<input name="Submit" type="submit" class="buttonface" value="  查询  ">
（支持模糊查询）</td>
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="tb">
  <tr>
    <td width="18%" nowrap class="td_top">编号</td>
    <td width="25%" nowrap class="td_top">姓名</td>
    <td width="39%" nowrap class="td_top">年龄</td>
    <td width="18%" nowrap class="td_top">详细信息</td>
  </tr>
</table>
<table width="95%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
  <tr>
    <td height="30" align="right"><img src="../../images/1.gif" alt="" width="4" height="5" align="absmiddle"> 首页　 <img src="../../images/2.gif" alt="" width="3" height="5" align="absmiddle"> 上一页　 <img src="../../images/2-2.gif" alt="" width="3" height="5" align="absmiddle"> 下一页　 <img src="../../images/3.gif" alt="" width="4" height="5" align="absmiddle"> 末页　　共 1 页 1 条记录</td>
  </tr>
</table>

<script type="text/javascript">
  window.onload =function GetDoctor() {
    $.ajax({
      type: "get",
      url: "/user/selectAllDoctor",
      data: {},
      async: true,
      dataType: 'json',
      success: function (data) {
        var json = data.data;
        if (data.data!=null) {
          $('#tb tr:gt(0)').remove();//删除之前的数据
          var s = '';
          for (var i = 0; i < json.length; i++) s += '<tr><td class="td_01">' + json[i].uNum + '</td><td class="td_01">' + json[i].uName + '</td><td class="td_01">' + json[i].uAge + '</td>'
                  + '<td class="td_01"><a href="/user/results/moreleavelist_1?uId='+json[i].uId+'" target="mainFrame" >&nbsp;&nbsp;>>></a></td></tr>';
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
