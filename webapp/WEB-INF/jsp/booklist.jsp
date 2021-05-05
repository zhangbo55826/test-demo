<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.books.pojo.Book" %>
<%@ page import="com.books.util.PageUtil" %>
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
                    <tr>
                        <td width="60"></td>
                        <td style="color:white;"><a href="">主页</a></td>
                        <td width="88"></td>
                        <td style="color:white;"><a>用户管理</a></td>
                        <td width="88"></td>
                        <td>
                        <td style="color:white;"><a href="/managebook">图书管理</a></td>
                        </td>
                        <td width="88"></td>
                        <td style="color:white;"><a>个人中心</a></td>
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
        <td></td>
    </tr>


    <%
        PageUtil pageUtil = (PageUtil) request.getAttribute("page");
         List<Book> list = (List<Book>) request.getAttribute("bookList");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
           for(Book book : list){
               String date = simpleDateFormat.format(book.getCreatetime());
               %>

    <tr>
    <td height="40" style="line-height: 40px;"><%=book.getName()%></td>
    <td height="40" style="line-height: 40px;"><%=book.getAuthor()%></td>
    <td height="40" style="line-height: 40px;"><%=date%></td>
    <td height="40" style="line-height: 40px;"><%=book.getCategory().getId()%></td>
    <td height="40" style="line-height: 40px;"><%=book.getStatus()%></td>
        <td height="40" style="line-height: 40px;"><a href="/deletebook?id=<%=book.getId()%>">删除</a></td>
        <td height="40" style="line-height: 40px;"><a href="/toupdate?id=<%=book.getId()%>">更新</a></td>
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
        <td width=160></td>
        <td><a href="/addbook">添加图书</a></td>
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
