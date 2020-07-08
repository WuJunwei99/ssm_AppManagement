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
                <form id="content" method="post">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-4">
                                <label class="col-sm-4 control-label" >软件名称：</label>
                                <div class="col-sm-8">
                                    <input type="text" name="softwareName" id="" class="form-control">
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
                                <button type="button" class="btn btn-w-m btn-info" id="send" onclick="submitForm()"> 查&nbsp;&nbsp;询</button>
                            </div>
                        </div>
                    </div>
                </div>
                	</form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example"
                           id="dataTables-example">
                        <tr>
                            <th>软件名称</th>
                            <th>APK名称</th>
                            <th>软件大小(单位:M)</th>
                            <th>所属平台</th>
                          	<th>一级分类</th>
                            <th>二级分类</th>
                            <th>三级分类</th>
                            <th>APP状态</th>
                            <th>应用简介</th>
                            <th>下载次数</th>
                            <th>最新版本</th>
                            <th>操作</th>
                        </tr>
 
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
function submitForm(){
	$.post("${pageContext.request.contextPath }/Appinfo/querylist",
			$("#content").serialize(), 
			function(data){

		console.log(data.rows.length)
		var table=document.getElementById("dataTables-example");
		if(data.rows.length==0){
			alert('没有查询到相关信息');
		}
		var rowNum=table.rows.length;
	     for (var i=1;i<rowNum;i++)
	     {
	    	 table.deleteRow(i);
	         rowNum=rowNum-1;
	         i=i-1;
	     }
		for(var i=0;i<data.rows.length;i++){
		    var row=table.insertRow(table.rows.length);
		    var c1=row.insertCell(0);
		    c1.innerHTML=data.rows[i].softwareName;
		    var c2=row.insertCell(1);
		    c2.innerHTML=data.rows[i].apkName;
		    var c3=row.insertCell(2);
		    c3.innerHTML=data.rows[i].softwareSize;
		    var c4=row.insertCell(3);
		    c4.innerHTML=data.rows[i].platform;
		    var c5=row.insertCell(4);
		    c5.innerHTML=data.rows[i].categoryLevel1;
		    var c6=row.insertCell(5);
		    c6.innerHTML=data.rows[i].categoryLevel2;
		    var c7=row.insertCell(6);
		    c7.innerHTML=data.rows[i].categoryLevel3;
		    var c8=row.insertCell(7);
		    c8.innerHTML=data.rows[i].status;
		    var c9=row.insertCell(8);
		    c9.innerHTML=data.rows[i].info;
		    var c10=row.insertCell(9);
		    c10.innerHTML=data.rows[i].downloads;
		    var c11=row.insertCell(10);
		    c11.innerHTML=data.rows[i].versionId;
		    var c12=row.insertCell(11);
		    c12.innerHTML ="<div class='btn-group my_btn-group'><button data-toggle='dropdown' class='btn btn-default dropdown-toggle my_dropdownbtn'>进行操作<span class='caret my_create'></span></button><ul class='dropdown-menu'><li><a>删除</a></li><li><a >上架</a></li><li><a >下架</a></li><li><a >新增版本</a></li><li><a href='#'>修改版本</a></li></ul></div>"

		}
			});
	}
function clearForm(){
	$('#content').form('reset');
}
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

    $('#send').click(function () {
    	$.getJSON("${pageContext.request.contextPath }/Appinfo/querylist",function(data){
    		
    	})
	})	
    var data=[{"uid":"2688","uname":"*江苏省南菁高级中学 022","sum":274.23},{"uid":"2689","uname":"*江阴国际会展中心管理有限公司 024","sum":0},{"uid":"2686","uname":"江苏申利实业股份有限公司 001","sum":7917.94},{"uid":"2715","uname":"江阴市吉达针纺有限公司 115","sum":41.39},{"uid":"2688","uname":"*江苏省南菁高级中学 022","sum":274.23}]
    /*for(var i=0;i<data.length;i++){
    alert(i);
    alert(data[i]);
    alert("id:"+data[0].uid+"name:"+data[0].uname)
}*/

</script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/iCheck/icheck.min.js"></script>
</body>
</html>
