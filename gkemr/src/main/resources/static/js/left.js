window.onload=function GetRole() {
    $.ajax({
        type: "get",
        url: "/user/getMenu",
        data: {},
        async: true,
        dataType: 'json',
        success: function (data) {
            var json = data.data;
            $('#tb table:gt(0)').remove();//删除之前的数据
            var s = '';
            alert("您好，您的身份是："+json[0].rName+",欢迎登陆");
            if ("主管医生"==json[0].rName ) {
                s += '<table width="100%" border="0" cellspacing="0" cellpadding="0"> ' +
                    '<tr>' +
                    '<td width="19"><img id="top_1" onClick="menu(\'menu_1\',\'top_1\');" src="../images/tree_03.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                    '<td nowrap>门诊管理</td>' +
                    ' </tr>' +
                    '</table>' +
                    '<div id="menu_1" style="DISPLAY: none">' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/patient/media/lists" target="mainFrame" class="a03">门诊挂号</a></td>' +
                    '</tr>' +
                    '</table>' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/user/results/chooseresult" target="mainFrame" class="a03">门诊医生</a></td>' +
                    '</tr>' +
                    ' </table>' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="/patient/zhenduan" target="mainFrame" class="a03">门诊诊断</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="/ith/fayao" target="mainFrame" class="a03">医生开药</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '</div>'+
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '<tr>' +
                ' <td width="19"><img id="top_7" onClick="menu(\'menu_7\',\'top_7\');" src="../images/tree_11.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                ' <td nowrap>医生管理</td>' +
                '</tr>' +
                '</table>' +

                '<div id="menu_7" style="DISPLAY: none">' +
                ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                ' <tr>' +
                '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                '<td nowrap><a href="../html/results/createresult1.htm" target="mainFrame" class="a03">医生查询</a></td>' +
                '</tr>' +
                '</table>' +
                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '<tr>' +
                '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                '<td nowrap><a href="../html/results/myresult.html" target="mainFrame" class="a03">医生诊断</a></td>' +
                '</tr>' +
                '</table>' +
                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '<tr>' +
                '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                ' <td nowrap><a href="/patient/shenhe" target="mainFrame" class="a03">实习医生审核</a></td>' +
                '</tr>' +
                '</table>' +
                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                ' <tr>' +
                '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                ' <td nowrap><a href="../html/results/staresults1.html" target="mainFrame" class="a03">医生开药</a></td>' +
                '</tr>' +
					'</table>' +
                '</div>' +
					'</div>' +
                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                ' <tr>' +
                ' <td width="19"><img id="top_9" onClick="menu(\'menu_9\',\'top_9\');" src="../images/tree_11.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                '<td nowrap>住院管理</td>' +
                '  </tr>' +
                ' </table>' +
                ' <div id="menu_9" style="DISPLAY: none">' +
                '  <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '<tr>' +
                ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                ' <td nowrap><a href="/ith/medical" target="mainFrame" class="a03">入院办理</a></td>' +
                '</tr>' +
                ' </table>' +
                ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '<tr>' +
                '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                ' <td nowrap><a href="/ith/chufang" target="mainFrame" class="a03">住院处方管理</a></td>' +
                '</tr>' +
                '</table>' +
                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                ' <tr>' +
                ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                ' <td nowrap><a href="/ith/fayao" target="mainFrame" class="a03">住院发药</a></td>' +
                ' </tr>' +
                ' </table>' +
                ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '  <tr>' +
                '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                '<td nowrap><a href="../html/medical/baoxiao/applist_1-2" target="mainFrame" class="a03">床位管理</a></td>' +
                ' </tr>' +
                '</table>' +
                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                '<tr>' +
                ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                ' <td nowrap><a href="/ith/chuYuan" target="mainFrame" class="a03">出院申请</a></td>' +
                ' </tr>' +
                ' </table>' +
                '</div>' +
                    '    <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '        <tr>'+
                     '            <td width="19"><img id="top_13" onClick="bottom(\'menu_13\',\'top_13\');" src="../images/tree_29.gif" width="19" height="20"></td>'+
                     '            <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                     '            <td nowrap>病人管理</td>'+
                     '    </tr>'+
                     '</table>'+
                     '<div id="menu_13" style="DISPLAY: none">'+
                     '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '            <tr>'+
                     '                <td width="19">&nbsp;</td>'+
                     '            <td width="19"><img id="top_15" onClick="menu(\'menu_15\',\'top_15\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                     '                <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                     '                <td nowrap>门诊病人</td>'+
                     '        </tr>'+
                     '    </table>'+
                     '    <div id="menu_15" style="DISPLAY: none">'+
                     '            <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '                <tr>'+
                     '                    <td width="19">&nbsp;</td>'+
                     '                <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                     '                    <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                     '                    <td nowrap><a href="/patient/tpatient?statu=m" target="mainFrame" class="a03">当日病人</a></td>'+
                     '            </tr>'+
                     '        </table>'+
                     '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '                <tr>'+
                     '                    <td width="19">&nbsp;</td>'+
                     '                <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                     '                    <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                     '                    <td nowrap><a href="/patient/hpatient?statu=m&i=0" target="mainFrame" class="a03">历史病人</a></td>'+
                     '            </tr>'+
                     '        </table>'+
                     '    </div>'+
                     '    <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '            <tr>'+
                     '                <td width="19">&nbsp;</td>'+
                     '            <td width="19"><img id="top_16" onClick="bottom(\'menu_16\',\'top_16\');" src="../images/tree_29.gif" width="19" height="20"></td>'+
                     '                <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                     '                <td nowrap>住院病人</td>'+
                     '        </tr>'+
                     '    </table>'+
                     '    <div id="menu_16" style="DISPLAY: none">'+
                     '            <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '                <tr>'+
                     '                    <td width="19">&nbsp;</td>'+
                     '                <td width="19">&nbsp;</td>'+
                     '                <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                     '                    <td nowrap><a href="/patient/tpatient" target="mainFrame" class="a03">当日病人</a></td>'+
                     '            </tr>'+
                     '        </table>'+
                     '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '                <tr>'+
                     '                    <td width="19">&nbsp;</td>'+
                     '                <td width="19">&nbsp;</td>'+
                     '                <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                     '                    <td nowrap><a href="/patient/hpatient?i=1" target="mainFrame" class="a03">历史病人</a></td>'+
                     '            </tr>'+
                     '        </table>'+
                     '    </div>'+
                     '</div>'+
           			 '<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '        <tr>'+
                     '          <td width="19"><img id="top_3" onClick="menu(\'menu_3\',\'top_3\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                     '          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                     '          <td nowrap>护理管理</td>'+
                     '    </tr>'+
                     '  </table>'+
           			 ' <div id="menu_3" style="DISPLAY: none">'+
           			'		<div width="100%" border="0" cellspacing="0" cellpadding="0">'+
           			'		  <tr>'+
           			'			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
           			'			<td nowrap><a href="/nurse/nurselist" target="mainFrame" class="a03">护理管理</a></td>'+
           			'	  </tr>'+
                    '</div>'+
                     '</div>'+
           			'	</table>'+
                    '  <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '        <tr>'+
                    '          <td width="19"><img id="top_2" onClick="menu(\'menu_2\',\'top_2\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                    '          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                    '          <td nowrap>药房管理</td>'+
                    '    </tr>'+
                    '  </table>'+
           			' <div id="menu_2" style="DISPLAY: none">'+
           			'	  <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
           			'		  <tr>'+
           			'			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
           			'			<td nowrap><a href="/drug/createapplication" target="mainFrame" class="a03">管理药品</a></td>'+
           			'	  </tr>'+
           			'	</table>'+
           			'	<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
           			'		  <tr>'+
           			'			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
           			'			<td nowrap><a href="/drug/applicationlist_1" target="mainFrame" class="a03">查询药品</a></td>'+
           			'	  </tr>'+
           			'	</table>'+
           			'	<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
           			'		  <tr>'+
           			'			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
           			'			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
           			'			<td nowrap><a href="/drug/applicationlist_2" target="mainFrame" class="a03">进药审批</a></td>'+
           			'	  </tr>'+
           			'	</table>'+
           			 ' </div>'+
                     '    <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '       <tr>'+
                     '         <td width="19"><img id="top_11" onClick="menu(\'menu_11\',\'top_11\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                     '         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                     '         <td nowrap>主任审核</td>'+
                     '   </tr>'+
                     ' </table>'+
                     ' <div id="menu_11" style="DISPLAY: none">'+
                     '       <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '         <tr>'+
                     '           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                     '           <td nowrap><a href="/drug/shenhe" target="mainFrame" class="a03">开药审核</a></td>'+
                     '     </tr>'+
                     '   </table>'+
                     '  </div>'+
           		     '<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '       <tr>'+
                     '         <td width="19"><img id="top_8" onClick="menu(\'menu_8\',\'top_8\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                     '         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                     '         <td nowrap>病历查询</td>'+
                     '   </tr>'+
                     ' </table>'+
                     ' <div id="menu_8" style="DISPLAY: none">'+
                     '     <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '         <tr>'+
                     '           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                     '           <td nowrap><a href="/emr/outpatientList" target="mainFrame" class="a03">病历信息查询</a></td>'+
                     '     </tr>'+
                     '   </table>'+
                     ' </div>'+
                     ' <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '       <tr>'+
                     '         <td width="19"><img id="top_12" onClick="menu(\'menu_12\',\'top_12\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                     '         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                     '         <td nowrap>权限管理</td>'+
                     '   </tr>'+
                     ' </table>'+
                     ' <div id="menu_12" style="DISPLAY: none">'+
                     '       <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '         <tr>'+
                     '           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                     '           <td nowrap><a href="/role/rolelist" target="mainFrame" class="a03">角色管理</a></td>'+
                     '     </tr>'+
                     '   </table>'+
                     '   <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                     '         <tr>'+
                     '           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>'+
                     '           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                     '           <td nowrap><a href="/role/query" target="mainFrame" class="a03">用户管理</a></td>'+
                     '     </tr>'+
                     '   </table>'+
                        '</div>';
                $('#tb').append(s);
            }


            else if("实习医生"==json[0].rName){
                s += '<table width="100%" border="0" cellspacing="0" cellpadding="0"> ' +
                    '<tr>' +
                    '<td width="19"><img id="top_1" onClick="menu(\'menu_1\',\'top_1\');" src="../images/tree_03.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                    '<td nowrap>门诊管理</td>' +
                    ' </tr>' +
                    '</table>' +
                    '<div id="menu_1" style="DISPLAY: none">' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/patient/media/lists" target="mainFrame" class="a03">门诊挂号</a></td>' +
                    '</tr>' +
                    '</table>' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="/patient/zhenduan" target="mainFrame" class="a03">门诊诊断</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="/ith/fayao" target="mainFrame" class="a03">医生开药</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '</div>'+
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    ' <td width="19"><img id="top_7" onClick="menu(\'menu_7\',\'top_7\');" src="../images/tree_11.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                    ' <td nowrap>医生管理</td>' +
                    '</tr>' +
                    '</table>' +

                    '<div id="menu_7" style="DISPLAY: none">' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    ' <tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="../html/results/createresult1.htm" target="mainFrame" class="a03">医生查询</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="../html/results/myresult.html" target="mainFrame" class="a03">医生诊断</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    ' <tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="../html/results/staresults1.html" target="mainFrame" class="a03">医生开药</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '</div>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    ' <tr>' +
                    ' <td width="19"><img id="top_9" onClick="menu(\'menu_9\',\'top_9\');" src="../images/tree_11.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                    '<td nowrap>住院管理</td>' +
                    '  </tr>' +
                    ' </table>' +
                    ' <div id="menu_9" style="DISPLAY: none">' +
                    '  <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/ith/medical" target="mainFrame" class="a03">入院办理</a></td>' +
                    '</tr>' +
                    ' </table>' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/ith/chufang" target="mainFrame" class="a03">住院处方管理</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    ' <tr>' +
                    ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/ith/fayao" target="mainFrame" class="a03">住院发药</a></td>' +
                    ' </tr>' +
                    ' </table>' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '  <tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="../html/medical/baoxiao/applist_1-2" target="mainFrame" class="a03">床位管理</a></td>' +
                    ' </tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    ' <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/ith/chuYuan" target="mainFrame" class="a03">出院申请</a></td>' +
                    ' </tr>' +
                    ' </table>' +
                    '</div>' +
                    '    <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '        <tr>'+
                    '            <td width="19"><img id="top_13" onClick="bottom(\'menu_13\',\'top_13\');" src="../images/tree_29.gif" width="19" height="20"></td>'+
                    '            <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                    '            <td nowrap>病人管理</td>'+
                    '    </tr>'+
                    '</table>'+
                    '<div id="menu_13" style="DISPLAY: none">'+
                    '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '            <tr>'+
                    '                <td width="19">&nbsp;</td>'+
                    '            <td width="19"><img id="top_15" onClick="menu(\'menu_15\',\'top_15\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                    '                <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                    '                <td nowrap>门诊病人</td>'+
                    '        </tr>'+
                    '    </table>'+
                    '    <div id="menu_15" style="DISPLAY: none">'+
                    '            <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/tpatient?statu=m" target="mainFrame" class="a03">当日病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/hpatient?statu=m&i=0" target="mainFrame" class="a03">历史病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '    </div>'+
                    '    <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '            <tr>'+
                    '                <td width="19">&nbsp;</td>'+
                    '            <td width="19"><img id="top_16" onClick="bottom(\'menu_16\',\'top_16\');" src="../images/tree_29.gif" width="19" height="20"></td>'+
                    '                <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                    '                <td nowrap>住院病人</td>'+
                    '        </tr>'+
                    '    </table>'+
                    '    <div id="menu_16" style="DISPLAY: none">'+
                    '            <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/tpatient" target="mainFrame" class="a03">当日病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/hpatient?i=1" target="mainFrame" class="a03">历史病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '    </div>'+
                    '</div>'+
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '       <tr>'+
                    '         <td width="19"><img id="top_8" onClick="menu(\'menu_8\',\'top_8\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                    '         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                    '         <td nowrap>病历查询</td>'+
                    '   </tr>'+
                    ' </table>'+
                    ' <div id="menu_8" style="DISPLAY: none">'+
                    '     <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '         <tr>'+
                    '           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                    '           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                    '           <td nowrap><a href="/emr/outpatientList" target="mainFrame" class="a03">病历信息查询</a></td>'+
                    '     </tr>'+
                    '   </table>'+
                    ' </div>';
                $('#tb').append(s);
            }
            else if ("护理医生"==json[0].rName){
                s += '<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                '        <tr>'+
                '          <td width="19"><img id="top_3" onClick="menu(\'menu_3\',\'top_3\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                '          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                '          <td nowrap>护理管理</td>'+
                '    </tr>'+
                '  </table>'+
                ' <div id="menu_3" style="DISPLAY: none">'+
                '		<div width="100%" border="0" cellspacing="0" cellpadding="0">'+
                '		  <tr>'+
                '			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                '			<td nowrap><a href="/nurse/nurselist" target="mainFrame" class="a03">护理管理</a></td>'+
                '	  </tr>'+
                '</div>'+
                '</div>';
                $('#tb').append(s);
            }
            else if ("审核医生"==json[0].rName){
                s += '<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '        <tr>'+
                    '            <td width="19"><img id="top_13" onClick="bottom(\'menu_13\',\'top_13\');" src="../images/tree_29.gif" width="19" height="20"></td>'+
                    '            <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                    '            <td nowrap>病人管理</td>'+
                    '    </tr>'+
                    '</table>'+
                    '<div id="menu_13" style="DISPLAY: none">'+
                    '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '            <tr>'+
                    '                <td width="19">&nbsp;</td>'+
                    '            <td width="19"><img id="top_15" onClick="menu(\'menu_15\',\'top_15\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                    '                <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                    '                <td nowrap>门诊病人</td>'+
                    '        </tr>'+
                    '    </table>'+
                    '    <div id="menu_15" style="DISPLAY: none">'+
                    '            <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/tpatient?statu=m" target="mainFrame" class="a03">当日病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/hpatient?statu=m&i=0" target="mainFrame" class="a03">历史病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '    </div>'+
                    '    <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '            <tr>'+
                    '                <td width="19">&nbsp;</td>'+
                    '            <td width="19"><img id="top_16" onClick="bottom(\'menu_16\',\'top_16\');" src="../images/tree_29.gif" width="19" height="20"></td>'+
                    '                <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                    '                <td nowrap>住院病人</td>'+
                    '        </tr>'+
                    '    </table>'+
                    '    <div id="menu_16" style="DISPLAY: none">'+
                    '            <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/tpatient" target="mainFrame" class="a03">当日病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '        <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                    '                <tr>'+
                    '                    <td width="19">&nbsp;</td>'+
                    '                <td width="19">&nbsp;</td>'+
                    '                <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                    '                    <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>'+
                    '                    <td nowrap><a href="/patient/hpatient?i=1" target="mainFrame" class="a03">历史病人</a></td>'+
                    '            </tr>'+
                    '        </table>'+
                    '    </div>'+
                    '</div>'+
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    ' <td width="19"><img id="top_7" onClick="menu(\'menu_7\',\'top_7\');" src="../images/tree_11.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>' +
                    ' <td nowrap>医生管理</td>' +
                    '</tr>' +
                    '</table>' +
                    '<div id="menu_7" style="DISPLAY: none">' +
                    ' <table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    ' <tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="../html/results/createresult1.htm" target="mainFrame" class="a03">医生查询</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    '<td nowrap><a href="../html/results/myresult.html" target="mainFrame" class="a03">医生诊断</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    '<tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="/patient/shenhe" target="mainFrame" class="a03">实习医生审核</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                    ' <tr>' +
                    '<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>' +
                    '<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>' +
                    ' <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>' +
                    ' <td nowrap><a href="../html/results/staresults1.html" target="mainFrame" class="a03">医生开药</a></td>' +
                    '</tr>' +
                    '</table>' +
                    '</div>' +
                    '<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                '        <tr>'+
                '          <td width="19"><img id="top_2" onClick="menu(\'menu_2\',\'top_2\');" src="../images/tree_11.gif" width="19" height="20"></td>'+
                '          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>'+
                '          <td nowrap>药房管理</td>'+
                '    </tr>'+
                '  </table>'+
                ' <div id="menu_2" style="DISPLAY: none">'+
                '	  <table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                '		  <tr>'+
                '			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                '			<td nowrap><a href="/drug/createapplication" target="mainFrame" class="a03">管理药品</a></td>'+
                '	  </tr>'+
                '	</table>'+
                '	<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                '		  <tr>'+
                '			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                '			<td nowrap><a href="/drug/applicationlist_1" target="mainFrame" class="a03">查询药品</a></td>'+
                '	  </tr>'+
                '	</table>'+
                '	<table width="100%" border="0" cellspacing="0" cellpadding="0">'+
                '		  <tr>'+
                '			<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>'+
                '			<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>'+
                '			<td nowrap><a href="/drug/applicationlist_2" target="mainFrame" class="a03">进药审批</a></td>'+
                '	  </tr>'+
                '	</table>'+
                ' </div>';
                $('#tb').append(s);
            }
            else {
                alert("没有数据")
            }

        }
    });
}

