<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>App开发者平台</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.jsp"/>
    <![endif]-->

    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/img/favicon.ico">
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i></div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear">
                                <span class="block m-t-xs" style="font-size:25px; text-align: center">
                                    <span class="glyphicon glyphicon-apple"><strong class="font-bold">-APP-BMS</strong></span>
                                </span>
                            </span>
                        </a>
                    </div>
                </li>
                <li><a class="J_menuItem" href="${pageContext.request.contextPath}/user/my_index"> <i class="fa fa-home"></i> <span
                        class="nav-label">欢迎页面</span> </a></li>
                <li>
                    <a href="#"><i class="fa fa-user"></i> <span class="nav-label">APP账户管理</span><span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="#"><i class="fa fa-comments-o"></i>邮箱<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li><a class="J_menuItem" href="${pageContext.request.contextPath}/user/mailbox">收件箱</a></li>
                                <li><a class="J_menuItem" href="${pageContext.request.contextPath}/user/mail_detail">查看邮件</a></li>
                                <li><a class="J_menuItem" href="${pageContext.request.contextPath}/user/mail_compose">写信</a></li>
                            </ul>
                        </li>
                        <li><a class="J_menuItem" href="${pageContext.request.contextPath}/user/per_space_profile"><i class="fa fa-heart"></i>个人信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-tv"></i> <span class="nav-label" href="${pageContext.request.contextPath}/app/page/add">APP应用理管</span><span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="${pageContext.request.contextPath}/user/app_maintain">APP查询</a></li>
                        <li><a class="J_menuItem" href="${pageContext.request.contextPath}/app/apps">APP管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i
                        class="fa fa-bars"></i> </a></div>
                <ul class="nav navbar-nav navbar-right" style="margin-right: 0px">
                    <li class="dropdown visible-md visible-lg"><a class="J_menuItem" href="${pageContext.request.contextPath}/user/per_space_profile"><img
                            class="user-avatar" src="${pageContext.request.contextPath}/assets/img/favicon.ico" alt="${pageContext.request.contextPath}/user/per_space_profile">测试员1号</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/login"><i class="fa fa-power-off"></i></a></li>
                </ul>
            </nav>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe id="J_iframe" width="100%" height="100%" src="${pageContext.request.contextPath}/user/my_index" frameborder="0" data-id=""
                    seamless></iframe>
        </div>
    </div>
    <!--右侧部分结束-->
</div>

<!-- 全局js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath }/assets/js/hAdmin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/index.js"></script>

<!-- 第三方插件 -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/pace/pace.min.js"></script>

</body>

</html>
