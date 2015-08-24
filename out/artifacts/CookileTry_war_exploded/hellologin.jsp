<%--
  Created by IntelliJ IDEA.
  User: zhiyou
  Date: 15-4-1
  Time: 下午4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="kiben" content="no-cache">
    <title></title>
</head>
<body>
<form name="longinform" action="dolongincookile.jsp" method="post">
    <table align="center">
        <tr>
            <th>用户名：</th>
            <th><input type="text" name="username" value=""></th>
        </tr>
        <tr>
            <th>密码:</th>
            <th><input type="password" name="password" value=""></th>
        </tr>
        <tr>
            <th><input type="checkbox" name="Usercheck" checked="checkde"></th>
            <th>十天內自动登录</th>
        </tr>
        <tr>
            <th><input type="submit" value="登录"></th>
            <th><input type="reset" value="取消"></th>
        </tr>
    </table>

</form>
</body>
</html>
