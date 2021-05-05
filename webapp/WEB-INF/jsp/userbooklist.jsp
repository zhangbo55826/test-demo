<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.books.pojo.Book" %>
<%@ page import="com.books.util.PageUtil" %>
<%@ page import="com.books.pojo.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>32132</title>
</head>
<body onload="SetTableColor()">
<table width="1000" align="center" >
    <tr>
        <td style="background-color: #888888;">
            <form method="post" action="/querybook">
                <table>
                    <%
                    User user = (User) request.getAttribute("userObj");
                    int id = user.getId();
                    %>
                    <tr>
                        <td width="60"></td>
                        <td style="color:white;"><a href="/index">主页</a></td>
                        <td width="88"></td>
                        <td style="color:white;"><a>欢迎：<%=user.getName()%></a></td>
                        <td width="88"></td>
                        <td>
                            <select id="bookmanage" name="bookmanage" style="color:aquamarine;font-size:20px;">
                                <option value="" selected>图书管理</option>
                                <option value="">图书类别管理</option>
                            </select>
                        </td>
                        <td width="88"></td>
                        <td style="color:white;"><a href="/usershow?id=<%=id%>">个人中心</a></td>
                        <td width="88"></td>
                        <td><input name="bookname" type="text" value="" placeholder="请输入书名"></td>
                        <td><input type="submit" style="width: 50px;height:20px;background-color: aquamarine;line-height:20px;color:white;text-align: center;padding:0;border: 0;" value="查询"></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
<table width="1000" align="center" style="text-align: center" id="tblMain">

    <tr>
        <td>书名</td>
        <td>作者</td>
        <td>上架时间</td>
        <td>种类</td>
        <td>状态</td>
       <td></td>
    </tr>


    <%
        PageUtil pageUtil = (PageUtil) request.getAttribute("page");
        List<Book> list = (List<Book>) request.getAttribute("bookList");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        for(Book book : list){
            String date = "";
            if(book.getCreatetime() !=null){
                 date = simpleDateFormat.format(book.getCreatetime());
            }

    %>

    <tr>
        <td height="40" style="line-height: 40px;"><%=book.getName()%></td>
        <td height="40" style="line-height: 40px;"><%=book.getAuthor()%></td>
        <td height="40" style="line-height: 40px;"><%=date%></td>
        <td height="40" style="line-height: 40px;"><%=book.getCategory().getId()%></td>
        <td height="40" style="line-height: 40px;"><%=book.getStatus()%></td>
        <td><a href="/borrow?id=<%=book.getId()%>">借阅</a></td>
    </tr>
    <%
        }
    %>
</table>
<table width="500" align="center">
    <tr>
        <td><a href="?start=0">首页</a></td>
        <td><a href="?start=${page.start-page.count}" >上页</a></td>
        <td><a href="?start=${page.start+page.count}">下页</a></td>
        <td><a href="?start=${page.last}">尾页</a></td>

    </tr>
</table>
<script type="text/javascript">
    function SetTableColor() {
        var tbl = document.getElementById("tblMain");
        var trs = tbl.getElementsByTagName("tr");
        for (var i = 0; i < trs.length; i++) {
            var j = i + 1;
            if (j % 2 == 0) { //偶数行
                trs[i].style.background = "#fffacd";
            }
            else {
                trs[i].style.background = "#cd853f";
            }
        }
    }
</script>
</body>
</html>

