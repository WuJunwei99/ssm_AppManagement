<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>狴犴居后台管理系统-写信</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/img/favicon.ico">
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
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
                <div class="pull-right tooltip-demo"><a href="mailbox.jsp" class="btn btn-white btn-sm"
                                                        data-toggle="tooltip" data-placement="top" title="存为草稿"><i
                        class="fa fa-pencil"></i> 存为草稿</a> <a href="mailbox.jsp" class="btn btn-danger btn-sm"
                                                              data-toggle="tooltip" data-placement="top" title="放弃"><i
                        class="fa fa-times"></i> 放弃</a></div>
                <h2> 写信 </h2>
            </div>
            <div class="mail-box">
                <div class="mail-body">
                    <form class="form-horizontal" method="get">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">发送到：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="eddie@mail.com">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">主题：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="mail-text h-200">
                    <div class="summernote">
                        <h2>xxx通知</h2>
                        <p> 据了解，学生宿舍楼九栋6层604寝室在2020年06月20日存在违章使用限禁电器的状况..... </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="mail-body text-right tooltip-demo"><a href="mailbox.jsp" class="btn btn-sm btn-primary"
                                                                  data-toggle="tooltip" data-placement="top"
                                                                  title="Send"><i class="fa fa-reply"></i> 发送</a> <a
                        href="mailbox.jsp" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top"
                        title="Discard email"><i class="fa fa-times"></i> 放弃</a> <a href="mailbox.jsp"
                                                                                    class="btn btn-white btn-sm"
                                                                                    data-toggle="tooltip"
                                                                                    data-placement="top"
                                                                                    title="Move to draft folder"><i
                        class="fa fa-pencil"></i> 存为草稿</a></div>
                <div class="clearfix"></div>
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

<!-- SUMMERNOTE -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/summernote/summernote.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/plugins/summernote/summernote-zh-CN.js"></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });


        $('.summernote').summernote({
            lang: 'zh-CN'
        });

    });
    var edit = function () {
        $('.click2edit').summernote({
            focus: true
        });
    };
    var save = function () {
        var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
        $('.click2edit').destroy();
    };
</script>
</body>
</html>
