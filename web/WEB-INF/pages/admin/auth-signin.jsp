<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 2019/8/7
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" +
            request.getServerPort() + path;
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>丽星平台 - 管理登录</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="丽星平台，在线家具市场销售平台"/>
    <meta name="keywords" content="丽星平台, 家具, 市场, 线上商城"/>
    <meta name="author" content="DBC" />

    <!-- Favicon icon -->
    <link rel="icon" href="<%=basePath%>/admin/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/bootstrap/css/bootstrap.min.css">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="<%=basePath%>/admin/fonts/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/ladda/css/ladda-themeless.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/css/style.css">



</head>

<body>
<div class="auth-wrapper">
    <div class="auth-content subscribe">
        <div class="auth-bg">
            <span class="r"></span>
            <span class="r s"></span>
            <span class="r s"></span>
            <span class="r"></span>
        </div>
        <div class="card">
            <div class="row no-gutters">
                <div class="col-md-4 col-lg-6 d-none d-md-flex d-lg-flex theme-bg align-items-center justify-content-center">
                    <img src="<%=basePath%>/admin/img/user/lock.png" alt="lock images" class="img-fluid">
                </div>
                <div class="col-md-8 col-lg-6">
                    <div class="card-body text-center">
                        <div class="row justify-content-center">
                            <div class="col-sm-10">
                                <h3 class="mb-4">欢迎登录丽星</h3>
                                <div class="input-group mb-3">
                                    <input id="account" type="text" class="form-control" placeholder="请输入你的账号" value="">
                                </div>
                                <div class="input-group mb-4">
                                    <input id="password" type="password" class="form-control" placeholder="请输入你的密码" value="">
                                </div>
                                <div class="form-group text-left">
                                    <div class="checkbox checkbox-fill d-inline">
                                        <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-a1" checked="">
                                        <label for="checkbox-fill-a1" class="cr"> 保存密码</label>
                                    </div>
                                </div>
                                <button id="signin" class="ladda-button ladda-button-demo btn btn-primary shadow-2 mb-4">登录</button>
                                <p class="mb-2 text-muted">忘记密码? <a href="/Admin/PasswordReset">重置</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Required Js -->
<script src="<%=basePath%>/admin/js/jquery-2.1.1.js"></script>
<script src="<%=basePath%>/admin/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/admin/js/vendor-all.min.js"></script>
<script src="<%=basePath%>/admin/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/admin/js/pcoded.min.js"></script>
<script src="<%=basePath%>/admin/plugins/ladda/js/spin.min.js"></script>
<script src="<%=basePath%>/admin/plugins/ladda/js/ladda.min.js"></script>
<script src="<%=basePath%>/admin/plugins/ladda/js/ladda.jquery.min.js"></script>
<script src="<%=basePath%>/admin/plugins/sweetalert/js/sweetalert.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        sessionStorage.setItem("adminInfo", "");

        var login = $('.ladda-button-demo').ladda();
        login.click(function () {
            if($('#account').val() == "" || $('#account').val().length != 11){
                swal({
                    title: "警告!",
                    text: "账号应为11位手机号!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else if($('#password').val() == "" || $('#password').val().length < 6){
                swal({
                    title: "警告!",
                    text: "密码应不少于六位!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else{
                $.ajax({
                    method: "POST",
                    url: "/Admin/LoginCheck",
                    dataType: "json",
                    data: {'mobile':$('#account').val(),'password':$('#password').val()},/*$("form").serialise()*/
                    success: function (data) {
                        if(data.flag != "1"){
                            swal({
                                title: "登录失败!",
                                text: "账号或密码错误!",
                                icon: "error",
                                button: {
                                    text: "确定",
                                },
                            });
                        }else{
                            sessionStorage.setItem("enterpriseInfo", JSON.stringify(data));
                            window.location.href = "<%=basePath%>/Admin/EnterpriseInfo/Summary";
                        }
                        login.ladda('stop');
                    },
                    beforeSend: function () {
                        login.ladda('start');
                    },
                    error: function () {
                        swal({
                            title: "出现错误!",
                            text: "网络参数出现错误!",
                            icon: "error",
                            button: {
                                text: "确定",
                            },
                        });
                    }
                });
            }
        });
    });
</script>

</body>
</html>
