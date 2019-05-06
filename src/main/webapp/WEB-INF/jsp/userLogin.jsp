<%--
  Created by IntelliJ IDEA.
  User: 黄军
  Date: 2019/5/4
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>车展登录</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="/statics/css/loginAndAddCss/style.css">
    <link rel="stylesheet" type="text/css" href="/statics/css/loginAndAddCss/reset.css"/>
    <style>
        #login{
            position: absolute;
            left: 294px;
            top: 2px;


        }
        #doAdd{
            background: rgba(255,255,255,0.1);
            font-size: 17px;
        }
        #particles-js{
            background-image: url("/statics/images/loginAndAddImg/background.jpg");
        }

    </style>
    <script src="/statics/js/jquery-1.12.4.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#myForm").submit(function(){

                var userName=$("input[name='userName']").val();
                var passWord=$("input[name='passWord']").val();

            if(userName=="" || userName==null){
                alert("请输入用户名")
                return false;
            }else if(passWord==""|| passWord==null){
                alert("请输入用户密码");
                return false;
            }
            return true;

        });

            
        })
    </script>
</head>
<body>
<div id="particles-js">
    <div class="login">
        <div id="login">
            <a href="/user/add.html" id="doAdd">去注册</a>

        </div>
        <div class="login-top">
            登录
        </div>
        <form method="post" action="" id="myForm">
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="/statics/images/loginAndAddImg/name.png"/></div>
            <div class="login-center-input">
                <input type="text" name="userName"  />
                <div class="login-center-input-text">用户名</div>
            </div>
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="/statics/images/loginAndAddImg/password.png"/></div>
            <div class="login-center-input">
                <input type="password" name="passWord"/>
                <div class="login-center-input-text">密码</div>
            </div>
        </div>
        <div id="myRadio" style="position: absolute; left: 45px;">
            <input type="radio"  name="type" checked="checked" value="用户"/>&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 15px;">用户</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio"  name="type"  value="管理员"/>&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 15px;">管理员</strong>

        </div>
            <input style="position: absolute;left: 45px" class="login-button" type="submit" value="登录">
        </form>
        <div class="sk-rotating-plane"></div>
    </div>

    <!-- scripts -->
    <script src="/statics/js/loginAndAddjs/particles.min.js"></script>
    <script src="/statics/js/loginAndAddjs/app.js"></script>
    <script type="text/javascript">
        function hasClass(elem, cls) {
            cls = cls || '';
            if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
            return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
        }

        function addClass(ele, cls) {
            if (!hasClass(ele, cls)) {
                ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
            }
        }

        function removeClass(ele, cls) {
            if (hasClass(ele, cls)) {
                var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
                while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                    newClass = newClass.replace(' ' + cls + ' ', ' ');
                }
                ele.className = newClass.replace(/^\s+|\s+$/g, '');
            }
        }
        // document.querySelector(".login-button").onclick = function(){
        //     addClass(document.querySelector(".login"), "active")
        //     setTimeout(function(){
        //         addClass(document.querySelector(".sk-rotating-plane"), "active")
        //         document.querySelector(".login").style.display = "none"
        //     },800)
        //     setTimeout(function(){
        //         removeClass(document.querySelector(".login"), "active")
        //         removeClass(document.querySelector(".sk-rotating-plane"), "active")
        //         document.querySelector(".login").style.display = "block"
        //         alert("登录成功")
        //     },5000)
        // }
    </script>
</body>
</html>
