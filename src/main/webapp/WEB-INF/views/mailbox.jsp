<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>狴犴居后台管理系统-收件箱</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/img/favicon.ico">
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-sm-3">
            <div class="ibox float-e-margins">
                <div class="ibox-content mailbox-content">
                    <div class="file-manager"><a class="btn btn-block btn-primary compose-mail" href="mail_compose.jsp">写信</a>
                        <div class="space-25"></div>
                        <h5>文件夹</h5>
                        <ul class="folder-list m-b-md" style="padding: 0">
                            <li><a href="mailbox.jsp"> <i class="fa fa-inbox "></i> 收件箱 <span
                                    class="label label-warning pull-right">2</span> </a></li>
                            <li><a href="mailbox.jsp"> <i class="fa fa-envelope-o"></i> 发信</a></li>
                            <li><a href="mailbox.jsp"> <i class="fa fa-certificate"></i> 重要</a></li>
                            <li><a href="mailbox.jsp"> <i class="fa fa-file-text-o"></i> 草稿 <span
                                    class="label label-danger pull-right">2</span> </a></li>
                            <li><a href="mailbox.jsp"> <i class="fa fa-trash-o"></i> 垃圾箱</a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-9 animated fadeInRight">
            <div class="mail-box-header">
                <form method="get" action="index.jsp" class="pull-right mail-search">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" name="search" placeholder="搜索邮件标题，正文等">
                        <div class="input-group-btn">
                            <button type="submit" class="btn btn-sm btn-primary"> 搜索</button>
                        </div>
                    </div>
                </form>
                <h2> 收件箱 (2) </h2>
                <div class="mail-tools tooltip-demo m-t-md">
                    <div class="btn-group pull-right">
                        <button class="btn btn-white btn-sm"><i class="fa fa-arrow-left"></i></button>
                        <button class="btn btn-white btn-sm"><i class="fa fa-arrow-right"></i></button>
                    </div>
                    <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left" title="刷新邮件列表"><i
                            class="fa fa-refresh"></i> 刷新
                    </button>
                    <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="标为已读"><i
                            class="fa fa-eye"></i></button>
                    <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="标为重要"><i
                            class="fa fa-exclamation"></i></button>
                    <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="标为垃圾邮件"><i
                            class="fa fa-trash-o"></i></button>
                </div>
            </div>
            <div class="mail-box">
                <table class="table table-hover table-mail">
                    <tbody>
                    <tr class="unread">
                        <td class="check-mail"><input type="checkbox" class="i-checks"></td>
                        <td class="mail-ontact"><a href="mail_detail.jsp">驻楼办-刘老师</a></td>
                        <td class="mail-subject"><a href="mail_detail.jsp">
                            据了解，学生宿舍楼九栋六层604寝室在2020年06月20日存在违章使用限禁电器的状况..... </a></td>
                        <td class=""><i class="fa fa-paperclip"></i></td>
                        <td class="text-right mail-date">昨天 10:20</td>
                    </tr>
                    <tr class="unread">
                        <td class="check-mail"><input type="checkbox" class="i-checks" checked></td>
                        <td class="mail-ontact"><a href="mail_detail.jsp">教务黄主任</a></td>
                        <td class="mail-subject"><a href="mail_detail.jsp"> 关于前日武同学在学生宿舍楼九栋人脸门禁识别失败导致... </a></td>
                        <td class=""></td>
                        <td class="text-right mail-date">上午10:57</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath }/assets/js/content.js"></script>

<!-- iCheck -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
</script>
</body>
</html>
