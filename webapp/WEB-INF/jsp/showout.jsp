<%@ page import="com.books.pojo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.books.pojo.Book" %><%--
  Created by IntelliJ IDEA.
  User: sooq
  Date: 2021/2/24
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询页</title>
</head>
<body>
<table>
    <tr>
        <td>
        姓名
    </td>
        <td>
            用户名
        </td>
        <td>
            地址
        </td>
        <td>
            电话
        </td>
        <td>
            邮箱
        </td>
        <td>书名</td>
        <td>作者</td>
    </tr>
<%
    List<User> userList = (List<User>) request.getAttribute("userList");
    for (User user: userList ) {
        for(Book book : user.getBookList()){

%>
    <tr>
        <td>
            <%=user.getName()%>
        </td>
        <td>
            <%=user.getUsername()%>
        </td>
        <td>
            <%=user.getAddress()%>
        </td>
        <td>
            <%=user.getPhone()%>
        </td>
        <td>
            <%=user.getEmail()%>
        </td>
        <td>  <%=book.getName()%></td>
        <td><%=book.getAuthor()%></td>
<%}}%>
</body>
</html>
