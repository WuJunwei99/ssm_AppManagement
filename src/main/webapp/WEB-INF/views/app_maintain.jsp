<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APP维护</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/img/favicon.ico">
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/style.css?v=4.1.0" rel="stylesheet">


    <!-- Data Tables -->
    <link href="${pageContext.request.contextPath }/assets/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

</head>

<style>
    .control-label {
        text-align: right;
    }

    .my_m-b {
        margin-bottom: 0px;
    }

    .my_create {
        margin-left: 10px;
    }

    .my_btn-group {
        width: 100%;
    }
    .my_dropdownbtn{
        width: 100%;
    }
</style>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeIn">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>APP信息管理平台<small>----测试员001-您可以通过搜索或则其他筛选项对APP的信息进行修改、删除等管理操作。^_^</small></h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-4">
                                <label class="col-sm-4 control-label">软件名称：</label>
                                <div class="col-sm-8">
                                    <input type="text" name="" id="" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="col-md-4 control-label">APP状态：</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="select_app_status"
                                            style="height: 34px;">
                                        <option></option>
                                        <option>待审核</option>
                                        <option>审核通过</option>
                                        <option>审核未通过</option>
                                        <option>已上架</option>
                                        <option>已下架</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-4 control-label">所属平台：</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="select_platform" style="height: 34px;">
                                        <option>电脑</option>
                                        <option>平板</option>
                                        <option>通用</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-4">
                                <label class="col-sm-4 control-label">一级分类：</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="select_level1" style="height: 34px;">
                                        <option>全部游戏</option>
                                        <option>全部应用</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-4 control-label">二级分类：</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="select_level2" style="height: 34px;">
                                        <option>全部游戏</option>
                                        <option>全部应用</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-4 control-label">三级分类：</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="select_level3" style="height: 34px;">
                                        <option>选择</option>
                                        <option>驻楼教师</option>
                                        <option>清洁工</option>
                                        <option>卫生督导</option>
                                        <option>保安</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-md-2 text-center">
                                <button type="button" class="btn btn-w-m btn-info">查&nbsp;&nbsp;询</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example"
                           id="dataTables-example">
                        <thead>
                        <tr>
                            <th>软件名称</th>
                            <th>APK名称</th>
                            <th>软件大小(单位:M)</th>
                            <th>所属平台</th>
                            <th>状态</th>
                            <th>下载次数</th>
                            <th>最新版本</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="gradeX">
                            <td>沙盘玩具:The Power Toy</td>
                            <td>com.doodleapps.powdertoy
                            </td>
                            <td>1.00</td>
                            <td>通用</td>
                            <td>4</td>
                            <td>4</td>
                            <td>1</td>
                            <td>
                                <div class="btn-group my_btn-group">
                                    <button data-toggle="dropdown"
                                            class="btn btn-default dropdown-toggle my_dropdownbtn">进行操作<span
                                            class="caret my_create"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">删除</a>
                                        </li>
                                        <li><a href="#">上架</a>
                                        </li>
                                        <li><a href="#">下架</a>
                                        </li>
                                        <li><a href="#">新增版本</a>
                                        </li>
                                        <li><a href="#">修改版本</a>
                                        </li>
                                        <li><a href="#">修改基础信息</a>
                                        </li>
                                        <li><a href="#">查看基础信息</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr class="gradeC">
                            <td>Trident</td>
                            <td>Internet Explorer 4.0
                            </td>
                            <td>Win 95+</td>
                            <td class="center">4</td>
                            <td class="center">X</td>
                            <td>Win 95+</td>
                            <td>Win 95+</td>
                            <td>Win 95+</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Misc</td>
                            <td>Dillo 0.8</td>
                            <td>Embedded devices</td>
                            <td class="center">-</td>
                            <td class="center">X</td>
                            <td>Win 95+</td>
                            <td>Win 95+</td>
                            <td>Win 95+</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Misc</td>
                            <td>NetFront 3.1</td>
                            <td>Embedded devices</td>
                            <td class="center">-</td>
                            <td class="center">C</td>
                            <td>Win 95+</td>
                            <td>Win 95+</td>
                            <td>Win 95+</td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js?v=3.3.6"></script>

<script src="${pageContext.request.contextPath }/assets/js/plugins/jeditable/jquery.jeditable.js"></script>

<!-- Data Tables -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath }/assets/js/content.js?v=1.0.0"></script>
<!-- Page-Level Scripts -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable({
            "lengthMenu": [5, 10, 15, 20]
        });
    });
    $(document).ready(function () {
        $('.dataTables-example').dataTable();

        /* Init DataTables */
        var oTable = $('#editable').dataTable();

        /* Apply the jEditable handlers to the table */
        oTable.$('td').editable('../example_ajax.php', {
            "callback": function (sValue, y) {
                var aPos = oTable.fnGetPosition(this);
                oTable.fnUpdate(sValue, aPos[0], aPos[1]);
            },
            "submitdata": function (value, settings) {
                return {
                    "row_id": this.parentNode.getAttribute('id'),
                    "column": oTable.fnGetPosition(this)[2]
                };
            },

            "width": "90%",
            "height": "100%"
        });


    });

    function fnClickAddRow() {
        $('#editable').dataTable().fnAddData([
            "Custom row",
            "New row",
            "New row",
            "New row",
            "New row"]);

    }
</script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/iCheck/icheck.min.js"></script>
</body>
</html>
