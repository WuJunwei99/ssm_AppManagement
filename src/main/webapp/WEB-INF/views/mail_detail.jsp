<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>狴犴居后台管理系统-查看邮件</title>
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
                <div class="pull-right tooltip-demo"><a href="mail_compose.jsp" class="btn btn-white btn-sm"
                                                        data-toggle="tooltip" data-placement="top" title="回复"><i
                        class="fa fa-reply"></i> 回复</a> <a href="mail_detail.jsp" class="btn btn-white btn-sm"
                                                           data-toggle="tooltip" data-placement="top" title="打印邮件"><i
                        class="fa fa-print"></i> </a> <a href="mailbox.jsp" class="btn btn-white btn-sm"
                                                         data-toggle="tooltip" data-placement="top" title="标为垃圾邮件"><i
                        class="fa fa-trash-o"></i> </a></div>
                <h2> 查看邮件 </h2>
                <div class="mail-tools tooltip-demo m-t-md">
                    <h3><span class="font-noraml">主题： </span>软件学院召开民族宗教工作专题会 </h3>
                    <h5><span class="pull-right font-noraml">2020年6月20日(星期三) 晚上8:20</span> <span class="font-noraml">发件人： </span>eddie@mail.com
                    </h5>
                </div>
            </div>
            <div class="mail-box">
                <div class="mail-body">
                    <h4>尊敬的各位师生：</h4>
                    <p>
                        会议强调，一要深刻认识中国共产党的领导和中国特色社会主义制度的优势，必须树牢“四个意识”，坚定“四个自信”，坚决做到“两个维护”，增强政治认同、思想认同、情感认同，推动习近平新时代中国特色社会主义思想入心入脑、走深走实，铸牢中华民族共同体意识。二要加强党对宗教工作的领导，落实宗教工作的主体责任，提高依法治理意识，运用《宗教事务条例》等法律法规开展工作，建立学院宗教工作管理网格，强化课堂教学、报告会、讲座等阵地建设，协助学校相关部门做好涉外文化学术交流、境外资金支持、宗教敏感项目管控，坚决抵制宗教渗透和防范校园传教。三要加强民族宗教理念与政策宣传教育，开展少数民族学生思想教育引领、学习帮扶和生活关心等工作，加强党外知识分子统战工作，要重在平常、抓在经常，充分调动学院师生的力量，重视和发展民族宗教工作，不断开创统战工作新局面。 </p>
                    <p class="text-right"> 南昌大学软件学院 </p>
                </div>
                <div class="mail-attachment">
                    <p><span><i class="fa fa-paperclip"></i> 2 个附件 - </span> <a href="mail_detail.jsp">下载全部</a> | <a
                            href="mail_detail.jsp">预览全部图片</a></p>
                    <div class="attachment">
                        <div class="file-box">
                            <div class="file"><a href="mail_detail.jsp"> <span class="corner"></span>
                                <div class="icon"><i class="fa fa-file"></i></div>
                                <div class="file-name"> Document_2020.doc</div>
                            </a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="mail-body text-right tooltip-demo"><a class="btn btn-sm btn-white"
                                                                  href="mail_compose.jsp"><i class="fa fa-reply"></i> 回复</a>
                    <a class="btn btn-sm btn-white" href="mail_compose.jsp"><i class="fa fa-arrow-right"></i> 下一封</a>
                    <button title="" data-placement="top" data-toggle="tooltip" type="button"
                            data-original-title="打印这封邮件" class="btn btn-sm btn-white"><i class="fa fa-print"></i> 打印
                    </button>
                    <button title="" data-placement="top" data-toggle="tooltip" data-original-title="删除邮件"
                            class="btn btn-sm btn-white"><i class="fa fa-trash-o"></i> 删除
                    </button>
                </div>
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
