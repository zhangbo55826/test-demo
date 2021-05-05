
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书添加</title>
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
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
<div style="width:800px; margin: 0 auto">
    <input type="text" name="name" id="name" class="put" placeholder=" 书名">
    <input type="text" name="author" id="author" class="put" placeholder=" 作者">
    <select name="category" class="put" id="category">
        <option>--请选择类别--</option>
        <option  data-id="1">文学</option>
        <option  data-id="2">历史</option>
        <option  data-id="3">科学</option>
        <option  data-id="4">情感</option>
    </select>
    <a href="#" id="submit" style="width:80px;height:30px;display: block; font-size:18px; line-height: 30px;text-align: center;margin: 30px auto 0;color:white;background-color: aquamarine;" >提 交</a>
</div>
<script>
$(function(){
    var url = '/increase'
    $('#submit').click(function(){
        var book = {};
        book.name = $('#name').val();
        book.author =$('#author').val();
        book.category ={
            id : $('#category').find('option').not(function(){
                return !this.selected;
            }).data('id')
        };
        var formData = new FormData();
        formData.append('book',JSON.stringify(book));
        $.ajax({
            url: url,
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
                    alert('请求失败');
                }
            }
        });

    })
})
</script>
</body>
</html>
