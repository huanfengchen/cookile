<%@ page import="java.net.URLDecoder" %>
<%--
  Created by IntelliJ IDEA.
  User: zhiyou
  Date: 15-4-1
  Time: 下午4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>登录用户信息</h1>
<br>
<%
    request.setCharacterEncoding("utf-8");
    String username="";
    String password="";
    Cookie[] cookie = request.getCookies();//建立Cookie对象
    if(cookie != null&&cookie.length>0){//判断cookie是否有值
        for(Cookie c:cookie){//遍历cookie
            if(c.getName().equals("username")){
                username= URLDecoder.decode(c.getValue(), "utf-8");//根据Cookie username键获取其值
            }
            if(c.getName().equals("password")){
                password=URLDecoder.decode(c.getValue(),"utf-8");
            }
        }
    }
%>
<br>
用户名：<%=username%><br>
密码：<%=password%><br>
</body>
</html>
