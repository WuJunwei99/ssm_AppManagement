<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>App开发者平台登录界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--图标库-->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>

    <!--响应式框架-->
    <link rel='stylesheet' href='${pageContext.request.contextPath }/assets/css/loginAndRegistered/bootstrap.min.css'>

    <!--主要样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/loginAndRegistered/style.css">

    <style>
        a {
            text-decoration: none;
            color: orange;
        }

        a:hover {
            text-decoration: none;
            color: black;
        }
    </style>
    <!--导入jquery-->
    <script src="${pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>
    <script type="text/javascript">

        //校验登录用户名 单词字符，长度4-10位
        function checkLoginUsername() {
            //1 获取用户名值
            var login_user_name = $('#login_user_name').val();
            //2 定义正则
            var reg_username = /^\w{4,10}$/;
            //3 判断 给出信息
            var flag = reg_username.test(login_user_name);
            if (flag) {
                $("#login_user_name").css("border", "1px solid  green")
            } else {
                ////用户名不合法，添加红框
                $("#login_user_name").css("border", "1px solid red");
            }
            return flag;
        }

        //校验注册用户名 单词字符，长度4-10位
        function checkRegisterUsername() {
            //1 获取用户名值
            var register_user_name = $('#register_user_name').val();
            //2 定义正则
            var reg_username = /^\w{4,10}$/;
            //3 判断 给出信息
            var flag = reg_username.test(register_user_name);
            if (flag) {
                $("#register_user_name").css("border", "1px solid  green");
            } else {
                ////用户名不合法，添加红框
                $("#register_user_name").css("border", "1px solid red");
            }
            return flag;
        }

        //校验登录密码
        function checkLoginPassword() {
            //1 获取密码
            var login_password = $('#login_password').val();
            //2 定义正则
            var reg_password = /^\w{8,16}$/;
            //3 判断 给出信息
            var flag = reg_password.test(login_password);
            if (flag) {
                $("#login_password").css("border", "1px solid  green");
            } else {
                ////用户名不合法，添加红框
                $("#login_password").css("border", "1px solid red");
            }
            return flag;
        }

        //校验注册密码
        function checkRegisterPassword() {
            //1 获取密码
            var register_password = $('#register_password').val();
            //2 定义正则
            var reg_password = /^\w{8,16}$/;
            //3 判断 给出信息
            var flag = reg_password.test(register_password);
            if (flag) {
                $("#register_password").css("border", "1px solid  green");
            } else {
                ////用户名不合法，添加红框
                $("#register_password").css("border", "1px solid red");
            }
            return flag;
        }


        $(function () {
            //表单提交，调用所有校验方法
            // $("#registerForm").submit(function () {
            //     //异步提交
            //     //表单校验通过后
            //     if (checkUsername() && checkPassword() && checkEmail()) {
            //         //参数：url，参数，回调函数
            //         $.post("user/regist", $(this).serialize(), function (data) {
            //             //处理服务器响应数据
            //             //"falg":false data: errorMsg:
            //             if (data.flag) {
            //                 //注册成功
            //                 location.href = "register_ok.html";
            //             } else {
            //                 //注册失败
            //                 $("#errorMsg").html(data.errorMsg)
            //             }
            //
            //         })
            //     }
            //     return false;
            //
            // });
            $('#login_user_name').blur(checkLoginUsername);
            $("#login_password").blur(checkLoginPassword);
            $("#register_user_name").blur(checkRegisterUsername);
            $("#register_password").blur(checkRegisterPassword);


        });

    </script>

</head>
<body>

<div class="container">

    <div class="card-wrap">

        <div class="card border-0 shadow card--welcome is-show" id="welcome">
            <div class="card-body">
                <h2 class="card-title">欢迎来到App开发平台</h2>
                <p>请选择登录或注册</p>
                <div class="btn-wrap"><a class="btn btn-lg btn-register js-btn" data-target="register">注册</a><a
                        class="btn btn-lg btn-login js-btn" data-target="login">登录</a></div>
            </div>
        </div>

        <!--注册界面相关div-->
        <div class="card border-0 shadow card--register" id="register">
            <div class="card-body">
                <h2 class="card-title">会员注册</h2>
                <p class="card-text">第三方注册</p>
                <p class="badge-wrap"><a class="badge"><i class="fab fa-facebook-f"></i></a><a class="badge"><i
                        class="fab fa-google"></i></a><a class="badge"><i class="fab fa-twitter"></i></a><a
                        class="badge"><i class="fab fa-github"></i></a></p>
                <form>
                    <div class="form-group">
                        <input class="form-control" type="text" id="register_user_name" name="register_user_name"
                               placeholder="用户名4~10长度"
                               required="required" onblur="">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" id="register_password" name="register_password"
                               placeholder="密码8~16长度"
                               required="required">
                    </div>
                    <button class="btn btn-lg">注册</button>
                </form>
            </div>
            <button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
        </div>

        <!--登录界面相关div-->
        <div class="card border-0 shadow card--login" id="login">
            <div class="card-body">
                <h2 class="card-title">欢迎登录！</h2>
                <p>第三方登录</p>
                <p class="badge-wrap"><a class="badge"><i class="fab fa-facebook-f"></i></a><a class="badge"><i
                        class="fab fa-google"></i></a><a class="badge"><i class="fab fa-twitter"></i></a><a
                        class="badge"><i class="fab fa-github"></i></a></p>
                <form>
                    <div class="form-group">
                        <div class="row" style="width: 60%; margin: 0 auto">
                            <input class="form-control col-md-12" type="text" id="login_user_name"
                                   name="login_user_name"
                                   placeholder="用户名4~10长度"
                                   required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row" style="width: 60%; margin: 0 auto">
                            <input class="form-control col-md-12" type="password" id="login_password"
                                   name="login_password"
                                   placeholder="密码8~16长度"
                                   required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row" style="width: 60%; margin: 0 auto">
                            <input class="form-control col-md-8" type="text" name="checkCode" placeholder="验证码"
                                   required="required">
                            <img class="col-md-4" src="${pageContext.request.contextPath }/assets/img/browser.png" height="32px" alt=""
                                 onclick="changeCheckCode(this)">
                            <script type="text/javascript">
                                //图片点击事件
                                function changeCheckCode(img) {
                                    img.src = "checkCode?" + new Date().getTime();
                                }
                            </script>
                        </div>
                    </div>
                    <p><a href="#">忘记密码?</a></p>
                    <button class="btn btn-lg" id="login_button">登录</button>
                </form>
            </div>
            <button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
        </div>

    </div>

</div>

<script src="${pageContext.request.contextPath }/assets/js/loginAndRegistered/index.js"></script>

</body>
</html>