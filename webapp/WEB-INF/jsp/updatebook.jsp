<%@ page import="com.books.pojo.Book" %><%--
  Created by IntelliJ IDEA.
  User: sooq
  Date: 2021/2/4
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
    <title>更新店铺</title>
    <style>
        .put{
            width:400px;
            height:50px;
            font-size:20px;
            margin: 30px auto 0;
            display: block;
        }
    </style>
</head>
<body>
<%
   Book book = (Book) request.getAttribute("bookObj");
%>
<div style="width:800px; margin: 0 auto">

    <input  name="id" id="id" class="put" value="<%=book.getId()%>" type="hidden">
    <input type="text" name="name" id="name" class="put" placeholder=" 书名" value="<%=book.getName()%>">
    <input type="text" name="author" id="author" class="put" placeholder=" 作者" value="<%=book.getAuthor()%>">
    <select name="status" class="put" id="status">
        <option>--请选择上架状态</option>
        <option data-id="0">上架</option>
        <option data-id="1">下架</option>
    </select>
    <select name="category" class="put" id="category">
        <option>--请选择类别--</option>
        <option  data-id="1">文学</option>
        <option  data-id="2">历史</option>
        <option  data-id="3">科学</option>
        <option  data-id="4">情感</option>
    </select>
   <a href="#" id="ti">提交</a>

</div>
<script>
    $('#ti').click(function(){
        var book = {};
        book.id=$('#id').val();
        book.name=$('#name').val();
        book.author = $('#author').val();
       book.status = $('#status').find("option").not(function(){
           return ! this.selected;
       }).data('id');
        book.category = {
          id : $('#category').find("option").not(function(){
              return ! this.selected;
          }).data('id')
        }

    var formData = new FormData();
    formData.append("book",JSON.stringify(book));
    $.ajax({
        url:'/updatebooks',
        type:'POST',
        data:formData,
        contentType:false,
        processData:false,
        cache:false,
        success:function(data){
            if(data.success){
                alert('提交成功!');
                window.location.href='/booklist';
            }else{
                alert('提交失败!');
            }
        }
    });
    });

</script>

</body>
</html>
