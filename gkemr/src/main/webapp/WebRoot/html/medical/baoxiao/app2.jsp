<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>录入病人信息</title>
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
            <td valign="bottom">录入病人信息</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="">
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0>
      <tr align="left" nowrap>
        <td width="78" height="24" align="center"  class=td_form01>病历号：</td>
        <td colspan="3" align="left"  class=td_form02><input name="textfield22" type="text" class="input" size="45"></td>
        <td width="146" align="center"  class=td_form01>姓名：</td>
        <td width="268" align="left"  class=td_form02><input name="textfield" type="text" class="input" size="50"></td>
      </tr>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>性别：</td>
        <td width="79" height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield2" type="text" class="input" size="15">
        </span></td>
        <td width="72" align="center"  class=td_form01>年龄：</td>
        <td width="95" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield5" type="text" class="input" size="15">
        </span></td>
        <td height="24" align="center"  class=td_form01>出生日期：</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield4" type="text" class="input" size="50">
        </span></td>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>身份证号：</td>
        <td height="24" colspan="3" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield3" type="text" class="input" size="45">
        </span></td>
        <td height="24" align="center"  class=td_form01>家属联系电话：</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield6" type="text" class="input" size="50">
        </span></td>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>主治医师：</td>
        <td height="24" colspan="3" align="left" valign="middle"  class=td_form01><select name="select" id="select">
          <option>习小平</option>
        </select></td>
        <td height="24" align="center"  class=td_form01>护理：</td>
        <td height="24" align="center"  class=td_form01><select name="select2" id="select2">
          <option>奥巴巴</option>
        </select></td>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>床位分配：</td>
        <td height="24" colspan="3" align="left" valign="middle"  class=td_form01><select name="select3" id="select3">
          <option>468</option>
          <option>456</option>
          <option>454</option>
          <option>354</option>
        </select></td>
        <td height="24" align="center"  class=td_form01>支付押金：</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield7" type="text" class="input" size="50">
        </span></td>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>xx:</td>
        <td height="24" colspan="3" align="left" valign="middle"  class=td_form01><span class="td_form02">
          <input name="textfield8" type="text" class="input" size="45">
        </span></td>
        <td height="24" align="center"  class=td_form01>xx:</td>
        <td height="24" align="center"  class=td_form01><span class="td_form02">
          <input name="textfield9" type="text" class="input" size="45">
        </span></td>
      <tr align="left" nowrap>
        <td height="24" align="center"  class=td_form01>病人病况：</td>
        <td height="24" colspan="5" align="left" valign="middle"  class=td_form01><label>
          <textarea name="textarea" id="textarea" cols="100" rows="5"></textarea>
        </label></td>
    </table>
    <br>
    <table width=95% border=0 align=center cellpadding=0 cellspacing=0 whdth='100%'>
      <tr>
        <td align="center"><input name=save  type=submit class=buttonface value= '  提交  '  onclick="self.close()">
            <input name=cancel  type=button class=buttonface value= '  返回  '  onClick="history.back(-1)"></td>
      </tr>
    </table>
  </form>
</center>
</body>
</html>
