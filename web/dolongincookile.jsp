<%@ page import="java.net.URLEncoder" %>
<%--
  Created by IntelliJ IDEA.
  User: zhiyou
  Date: 15-4-1
  Time: 下午4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>用户登录成功</h1>
<hr>
<br>
<br>
<%
    request.setCharacterEncoding("utf-8");//编码的字符集是utf-8
    String[] isUsercheck = request.getParameterValues("Usercheck");//获取字符串类型的数组的值
    if(isUsercheck !=null&&isUsercheck.length>0){
        String username = URLEncoder.encode(request.getParameter("username"), "utf-8");//调用URLEncoder类的方法encode方法对request.getParameter("username")字符串进行编码，使用的字符集是utf-8
        String password =URLEncoder.encode(request.getParameter("password"),"utf-8");//获取客户端填写的password的值
        Cookie usernamecookie = new Cookie("username",username);//new Cookie对象
        Cookie passwordcookie = new Cookie("password",password);
        usernamecookie.setMaxAge(3);//设置Cookie的生存期
        passwordcookie.setMaxAge(3);//设置Cookie的生存期
        response.addCookie(usernamecookie);//保存cookie的值
        response.addCookie(passwordcookie);
    }
    else {
        Cookie[] cookies=request.getCookies();
        if(cookies !=null&& cookies.length>0){
            for(Cookie c:cookies){//遍历所有的cookies
                if(c.getName().equals("username")||c.getName().equals("password")){
                    c.setMaxAge(0);//设置cookie失败
                    response.addCookie(c);//重新保存
                }
            }
        }
    }
%>
<a href="usercookile.jsp" target="_blank">查看用户信息</a>
</body>
</html>
