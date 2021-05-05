<%@ page import="com.books.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: sooq
  Date: 2021/2/11
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<%
        User user = (User) request.getAttribute("user1");
%>
<table cellspacing="0" cellpadding="0">
    <tr>
        <td rowspan="3"><img src="<%=user.getImg_address()%>" width="60"></td>
        <td>姓名：<%=user.getName()%></td>
    </tr>
    <tr>

        <td>手机号：<%=user.getPhone()%></td>
    </tr>
    <tr>

        <td>地址：<%=user.getAddress()%></td>
    </tr>
</table>
</body>
</html>
