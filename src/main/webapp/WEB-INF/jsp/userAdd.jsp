<%--
  Created by IntelliJ IDEA.
  User: 黄军
  Date: 2019/5/4
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

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
            left: 380px;
            top: 2px;


        }
        #doAdd{
            background: rgba(255,255,255,0.1);
            font-size: 20px;
        }
        .login-center-input{
            float: left;width: 230px;margin-left: 10px;height: 30px;position: relative;
        }
        #particles-js{
            background-image: url("/statics/images/loginAndAddImg/background.jpg");
        }
    </style>
    <script src="/statics/js/jquery-1.12.4.js" type="text/javascript"></script>
    <script type="text/javascript">
        var random=null;
        $(function () {

            $("#myForm").submit(function(){
                
                var userName=$("input[name='userName']").val();
                var passWord=$("input[name='passWord']").val();
                var address=$("input[name='address']").val();
                var cardId=$("input[name='cardId']").val();
                var bank=$("input[name='bank']").val();
                var bankPwd=$("input[name='bankPwd']").val();
                var phone=$("input[name='phone']").val();
                var code=$("input[name='code']").val();
                var regCardId = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;  //身份证正则表达式
                var  regHpone=/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;  //手机号正则表达式
                var pattern = /^([1-9]{1})(\d{14}|\d{18})$/;//银行卡号正则表达式
                var num=/^\d{6}$/;  //密码正则表达式
                if(userName==""||userName==null){
                    alert("请输入用户名")
                    return false;
                }else if(passWord==""||passWord==null){
                    alert("请输入用户密码");
                    return false;
                }else if(address==""||address==null){
                    alert("请输入地址");
                    return false;
                }else if(cardId==""||cardId==null){
                    alert("请输入身份证号");
                    return false;
                }else if(bank==""||bank==null){
                    alert("请输入银行卡号");
                    return false;
                }else if(bankPwd==""||bankPwd==null){
                    alert("请输入交易密码");
                    return false;
                }else if(phone==""||phone==null){
                    alert("请输入手机号");
                    return false;
                }else if(code==""||code==null){
                    alert("请输入验证码");
                    return false;
                }else if(!regCardId.test(cardId)){
                    alert("请输入正确的身份证号");
                    return false;
                }else if(!regHpone.test(phone)){
                    alert("请输入正确的手机号");
                    return false;
                }else if(!pattern.test(bank)){
                    alert("请输入正确的银行卡号");
                    return false;
                }else if(!num.test(bankPwd)){
                    alert("银行卡密码必须是六位数字");
                    return false;
                }else if(!num.test(code)){
                    alert("验证码必须是六位数字");
                    return false;
                }else if(code!=random){
                    alert("你输入的验证码不正确");
                    return false;
                }


                return true;





            });

        });

        function gain() {
            var phone=$("input[name='phone']").val();
            var regHpone=/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;  //手机号正则表达式
            if(phone==""||phone==null){
                alert("手机号不能为空");
                return false;
            }else if(!regHpone.test(phone)){
                alert("手机号格式不正确");
                return false;
            }else {

                $.get("/message/gain",{phone: phone},function (result) {

                   random=result;
                },"JSON");
                return false;
            }
            return true;

        }

    </script>
</head>
<body>
<div id="particles-js">
    <div class="login" style="width: 450px;border-radius: 5px;height: 670px; top: 39%;left: 50%;">
        <div id="login">
            <a href="/user/login.html" id="doAdd">去登录</a>
        </div>
        <div class="login-top" style="margin-top: 30px">
            注册
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
            <div class="login-center-img"><img  src="/statics/images/loginAndAddImg/password.png"/></div>
            <div class="login-center-input">
                <input type="password" name="passWord"  />
                <div class="login-center-input-text">密码</div>
            </div>
        </div>

        <div class="login-center clearfix">
            <div class="login-center-img"><img style="background: rgba(255,255,255,0.8);" src="/statics/images/loginAndAddImg/timg.jpg"/></div>
            <div class="login-center-input">
                <input type="text" name="address" />
                <div class="login-center-input-text">家庭住址</div>
            </div>
        </div>

        <div class="login-center clearfix">
            <div class="login-center-img"><img style="background: rgba(255,255,255,0.8);" src="/statics/images/loginAndAddImg/shenfenzheng.jpg"/></div>
            <div class="login-center-input">
                <input type="text" name="cardId"  />
                <div class="login-center-input-text">身份证号</div>
            </div>
        </div>

        <div class="login-center clearfix">
            <div class="login-center-img"><img style="background: rgba(255,255,255,0.8);" src="/statics/images/loginAndAddImg/bank.jpg"/></div>
            <div class="login-center-input">
                <input type="text" name="bank"  />
                <div class="login-center-input-text">银行卡号</div>
            </div>
        </div>

        <div class="login-center clearfix">
            <div class="login-center-img"><img style="background: rgba(255,255,255,0.8);" src="/statics/images/loginAndAddImg/mima.jpg"/></div>
            <div class="login-center-input">
                <input type="text" name="bankPwd" />
                <div class="login-center-input-text">交易秘密</div>
            </div>
        </div>

        <div class="login-center clearfix">
            <div class="login-center-img"><img style="background: rgba(255,255,255,0.8);" src="/statics/images/loginAndAddImg/hpone.jpg"/></div>
            <div class="login-center-input">
                <input style="width: 140px;" type="text" name="phone" />
                <div class="login-center-input-text">手机号码</div>
            </div>
        </div>

        <div class="login-center clearfix">
            <div class="login-center-img"><img style="background: rgba(255,255,255,0.8);" src="/statics/images/loginAndAddImg/yes.jpg"/></div>
            <div class="login-center-input">
                <input style="width: 140px;" type="text" name="code"  />
                <input style="width: 90px; position: absolute;top: -60px;" type="button" onclick="gain();"  name="" value="获取认证码" />
                <div class="login-center-input-text">验证码</div>

            </div>

        </div>
            <input style="position: absolute;left: 43px;top:534px;"  class="login-button" type="submit" value="注册">
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
