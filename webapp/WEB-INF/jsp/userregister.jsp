<%--
  Created by IntelliJ IDEA.
  User: sooq
  Date: 2021/2/7
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
    <style>
        .put{
            width:400px;
            height:50px;
            font-size:20px;
            margin: 30px auto 0;
            display: block;
        }
        .put1{
            width:400px;
            height:400px;
            font-size:20px;
            margin: 30px auto 0;
            display: block;
        }
    </style>
</head>
<body>
<input type="text" name="username" id="username" class="put" placeholder="请输入用户名">
<input type="text" name="password" id="password" class="put" placeholder="请输入密码">
<input type="text" name="email" id="email" class="put" placeholder="电子邮箱">
<input type="text" name="name" id="name" class="put" placeholder="请输入真实姓名">
<input type="text" name="address" id="address" class="put" placeholder="请输入地址">
<input type="text" name="phone" id="phone" class="put" placeholder="请输入手机号">
<p style="text-align: center">上传头像：</p>
<input type="file" name="img_address" id="img_address" class="put1" placeholder="上传头像">
<a href="javascript:void(0)" class="put" id="pp">提 交</a>
<script>
    $(function(){
        $('#pp').click(
            function(){
                var user ={};
                user.username = $('#username').val();
                user.password = $('#password').val();
                user.email = $('#email').val();
                user.name = $('#name').val();
                user.address = $('#address').val();
                user.phone = $('#phone').val();

                var thumbnail = $('#img_address')[0].files[0];
                var formData = new FormData();
                formData.append("user",JSON.stringify(user));
                formData.append("thumbnail",thumbnail);
                $.ajax({
                    url:'/uregister',
                    type:'POST',
                    data:formData,
                    contentType:false,
                    processData:false,
                    cache:'false',
                    success:function(data){
                        if(data.success){
                            alert('提交成功');
                        }else{
                            alert('提交失败');
                        }
                    }
                })
            }
        )
    })
</script>
</body>
</html>
