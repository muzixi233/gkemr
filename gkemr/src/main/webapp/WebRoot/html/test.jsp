<%--
  Created by IntelliJ IDEA.
  User: 64317
  Date: 2019-04-28
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta charset="utf-8">
    <title>jQuery打印插件jqprint</title>
    <script language="javascript" src="../../js/jquery-1.4.4.min.js"></script>
    <script language="javascript" src="../../js/jquery.jqprint-0.3.js"></script>
    <script language="javascript" src="../../js/js.js"></script>s
    <script language="javascript" src="../../js/jquery.jqprint-0.3.js"></script>
</head>

<body>
<div id="ddd">
    <table>
        <tr>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
        </tr>
        <tr>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
        </tr>
        <tr>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
        </tr>
        <tr>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
        </tr>
        <tr>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
        </tr>
    </table>
</div>
<input type="button" onclick="aa()" value="打印"/>

</body>
<script language="javascript">

    function aa(){
        $("#ddd").jqprint();
    }
</script>
</html>
