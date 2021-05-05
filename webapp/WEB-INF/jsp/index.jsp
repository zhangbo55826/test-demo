<%--
  Created by IntelliJ IDEA.
  User: sooq
  Date: 2021/2/5
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<style>
    .clear{
        clear:both;
    }
    .banner{
        width:100%;
        margin:0 auto;
    }
    .banner img{
        width:100%;
    }
    .section{
        width:100%;
    }
    .left{
        width:50%;
       float: left;
    }
    .p1{
        font-size:20px;
    }
    .right{
        width:50%;
        float: right;
    }
    .p2{
        font-size:20px;
    }
    .section2{
        width:100%;
    }
    .font{
        width:47%;
        float: left;
        font-size:14px;

    }
    .img{
        width:50%;
        float: right;
    }
    .img img{
        width: 100%;
    }
    .load{
        width:100%;
    }
    .left_fl{
        float: left;
    }
    .right_fl{
        float: right;
    }
</style>
<body>
<div class="load">
    <div class="user right_fl">
        <form action="/managelogin" method="post">
        <div class="name left_fl">管理员登录</div>
            <div class="left_fl">&nbsp;&nbsp;</div>
        <div class="admin left_fl"><input name="username" class="put"></div>
            <div class="left_fl">&nbsp;&nbsp;</div>
        <div class="password left_fl"><input name="password" class="put"></div>
            <div class="left_fl">&nbsp;&nbsp;</div>
            <div class="sub left_fl"><input type="submit" class="submit"/></div>
        </form>
    </div>
    <div class="manage right_fl">
        <form action="/userlogin" method="post">
            <div class="name left_fl">用户登录</div>
            <div class="left_fl">&nbsp;&nbsp;</div>
            <div class="admin left_fl"><input name="username" class="put"></div>
            <div class="left_fl">&nbsp;&nbsp;</div>
            <div class="password left_fl"><input name="password" class="put"></div>
            <div class="left_fl">&nbsp;&nbsp;</div>
            <div class="sub left_fl"><input type="submit" class="submit"/></div>
        </form>
    </div>
</div>
<div class="banner"><img src="/img/banner.png"></div>
<div class="section">
    <div class="left">
        <p class="p1">书籍推荐</p>
    </div>
    <div class="right">
        <p class="p2">图书管理简介</p>
        <div class="section2">
            <div class="font">武汉大学图书馆以其历史悠久、藏书丰富、建筑宏伟、环境幽雅而闻名于世。图书馆源于上个世纪末湖广总督张之洞创办的湖北自强学堂图书室， 1917 年正式建馆， 1928 年定名为国立武汉大学图书馆。 1935 年启用坐落在东湖之滨、狮子山顶的老图书馆大楼。 1985 年在校园中心又建成了一座新图书馆。</div>
            <div class="img"><img src="/img/right.jpeg"></div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="clear"></div>
</div>
</body>
</html>
