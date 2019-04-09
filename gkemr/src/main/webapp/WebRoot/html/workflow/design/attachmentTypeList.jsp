<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>附件类别列表</title>
<link href="../../../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript1.2" src="../../../js/stm31.js"></script>
<SCRIPT language=JavaScript type=text/JavaScript>

function selectAllByChk(chk,checkbox) {     
	var size = checkbox.length;
    if(size == null)
        checkbox.checked =chk.checked;
    else{
        for (i = 0; i < checkbox.length; i++) {
            checkbox[i].checked =chk.checked;
        }
	}
}

</SCRIPT>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="98%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="15"><img src="../../../images/index_32.gif" width="9" height="9"></td>
            <td valign="bottom" class="title">附件类别列表</td>
          </tr>
      </table></td>
    </tr>
  </table>
  <br>
  <table width="95%" border="0" cellpadding="0" cellspacing="0" class="table01">
    <tr>
      <td align="center" class="td_top">        <input name="chk" type="checkbox" id="chk" onClick="selectAllByChk(chk,checkbox)" value="checkbox0">
      </td>
      <td class="td_top">序号</td>
      <td class="td_top">类别编号</td>
      <td class="td_top">名称</td>
      <td class="td_top">扩展名</td>
      <td class="td_top">content type</td>
    </tr>
    <tr>
      <td align="center" class="td_01">        <input type="checkbox" name="checkbox" value="checkbox">
      </td>
      <td class="td_01">1</td>
      <td class="td_01">AS0001</td>
      <td class="td_01"><a href="attachmentTypeEdit.jsp">xls文档</a></td>
      <td class="td_01">xls</td>
      <td class="td_01">x-application msexcel</td>
    </tr>
    <tr>
      <td align="center" class="td_01">        <input type="checkbox" name="checkbox" value="checkbox">
      </td>
      <td class="td_01">2</td>
      <td class="td_01">as0002</td>
      <td class="td_01"><p>doc文档</p>
      </td>
      <td class="td_01">doc</td>
      <td class="td_01">x-application msword </td>
    </tr>
    <tr>
      <td align="center" class="td_01">        <input type="checkbox" name="checkbox" value="checkbox">
      </td>
      <td class="td_01">2</td>
      <td class="td_01">as0002</td>
      <td class="td_01"><p>jpg图片</p></td>
      <td class="td_01">jpg</td>
      <td class="td_01">x-image jpeg/jpg </td>
    </tr>
  </table>
  <br>
  <table width="95%" border="0" cellpadding="0" cellspacing="0" class="table02">
    <tr>
      <td align="center"><input name="Button" type="button" class="buttonface" onClick="location.href='attachmentTypeEdit.jsp'" value="  增加  ">
      <input name="Button" type="button" class="buttonface" value="  删除  ">      </td>
    </tr>
  </table>
  <br>
</center>
</body>
</html>
