<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查询结果</title>
<script language="javascript" src="../../../js/clientSideApp.js"></script>
<script language="JavaScript" type="text/javascript" src="../../../js/win_center.js"></script>
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
<link href="../../../css/style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td width="15"><img src="../../../images/index_32.gif" width="9" height="9"></td>
        <td valign="bottom"><span class="title">待开药病人</span></td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="td_page">病历号：
      <input name="textfield" type="text" class="input" size="20">
      身份证号： 
			
      <input name="PARA_YM_NOW" size="30" type="text" class="input"   id="PARA_YM_NOW" next="A001014" alt="查询年月|0|d|||" value="" onFocus="{obtainFocus(this),this.select()}" onKeyPress="gotoNextInput(this)" onBlur="matchInput(this)" readonly>
      <input name="Submit" type="submit" class="buttonface" value="  查询  ">
<input name="Submit" type="submit" class="buttonface" value="查询全部">
 <a href="#" onClick="javascript:openwindow('../../org/QUERY/index.html','',500,500)"><input name="Submit2" type="submit" class="buttonface02" value="高级查询"></a>
</td>
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01" id="tb">
  <tr>
    <td width="18%" class="td_top">病历编号</td>
    <td width="15%" class="td_top">姓名</td>
    <td width="19%" class="td_top">诊断人</td>
    <td width="25%" class="td_top">操作</td>

  </tr>
</table>
<table width="95%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
  <tr>
    <td height="30" align="right"><img src="../../../images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="../../../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="../../../images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="../../../images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 1 页 1 条记录</td>
  </tr>
</table>
<script type="text/javascript">
  window.onload =function GetPatient() {
            $.ajax({
              type: "get",
              url: "/drug/selectpatient",
              data: {},
              async: true,
              dataType: 'json',
              success: function (data) {
                var json = data.data;
                if (data.data!=null) {
                  $('#tb tr:gt(0)').remove();//删除之前的数据
                  var s = '';
                  for (var i = 0; i < json.length; i++) s += '<tr><td class="td_01">' + json[i].mrNum + '</td><td class="td_01">' + json[i].pName + '</td><td class="td_01">' + json[i].doctor + '</td>'
                          + '<td class="td_01"><a href="/drug/fayaoxq?pId='+json[i].pId+'" target="mainFrame" >&nbsp;&nbsp;>>></a></td></tr>';
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
