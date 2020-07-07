<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>狴犴居后台管理系统-人脸库编辑</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/img/favicon.ico">
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title  back-change">
                    <h5>人脸信息录入</h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">学号：</label>
                                <div class="col-sm-10" style="margin-bottom: 20px">
                                    <input type="text" name="" id="stuid" class="form-control" placeholder="请输入学生学号">
                                    <span class="help-block m-b-none">请按提示输入信息</span></div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">宿舍楼栋：</label>
                                <div class="col-sm-10" style="margin-bottom: 20px">
                                    <input type="text" name="" id="floor" class="form-control" placeholder="请输入学生所属楼栋">
                                    <span class="help-block m-b-none">请按提示输入信息</span></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="file-input">照片选择：</label>
                                <div class="col-md-10" style="margin-bottom: 20px">
                                    <input type="file" id="btn_file3" name="consignerRdFile"
                                           accept="image/jpg,image/jpeg,image/gif,image/png" style="display:none"
                                           onchange="imgChange(event,'consignerRdSign')">
                                    <img alt="" id="consignerRdSign" src="assets/img/choose.png"
                                         onclick="F_Open_dialog('btn_file3')" width="420px"></div>
                            </div>
                        </div>
                        <div class="hr-line-dashed" style="margin-top: 500px"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-sm-12 col-sm-offset-3">
                                    <button class="btn btn-primary" onclick="query()" type="submit">提交</button>
                                    <button class="btn btn-white" type="submit" onClick="document.getElementById('stuid').value = '';
                                                                                         document.getElementById('floor').value = '';
                                                                                         document.getElementById('consignerRdSign').src = 'img/choose.png'">
                                        取消
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title  back-change">
                    <h5>人脸信息删除</h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">学号：</label>
                                <div class="col-sm-10" style="margin-bottom: 20px">
                                    <input type="text" name="" id="denumber" class="form-control" placeholder="请输入学生学号">
                                    <span class="help-block m-b-none">请按提示输入信息</span></div>
                            </div>
                        </div>
                        <div class="hr-line-dashed" style="margin-top: 70px"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-sm-12 col-sm-offset-3" style="margin-left: 0px">
                                    <button class="btn btn-primary" onclick="photodelete()" type="submit">提交</button>
                                    <button class="btn btn-white" type="submit"
                                            onClick="document.getElementById('denumber').value = ''">取消
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script>
    /*图片点击触发input - file点击*/
    function F_Open_dialog(id) {
        document.getElementById(id).click();
    }

    var base = "";

    function imgChange(e, imageid) {
        console.info(e.target.files[0]);//图片文件
        console.log(e.target.value);//这个也是文件的路径和上面的dom.value是一样的
        var reader = new FileReader();
        reader.onload = (function (file) {
            return function (e) {
                console.info(this.result); //这个就是base64的数据了
                document.getElementById(imageid).src = this.result;
                base = this.result;
            };
        })(e.target.files[0]);
        reader.readAsDataURL(e.target.files[0]);
    }

    function allClear() {

    }
</script>
<script type="text/javascript">
    function query() {
        var stuid = document.getElementById("stuid").value;
        var floor = document.getElementById("floor").value;


        var person = new Object();

        person.stuid = stuid;
        person.floor = floor;
        person.base = base;

        console.info("info==========================stuid==" + stuid);
        console.info("log==========================floor==" + floor);
        console.info("log==========================base==" + base);
        //将 JavaScript 对象person转换为 JSON 字符串
        var persons = JSON.stringify(person);
        //var mydata={"base":base,"stuid":stuid,"floor":floor}
        //alert(persons);
        $.ajax({

            type: "POST",
            url: "FaceInsert",
            dataType: 'json',
            contentType: 'application/json;charset=utf-8',
            data: persons,

            success: function (data) {
                var result = eval(data);
                //alert(result)
                //var jsonobj=eval("("+data+")");
                //alert(jsonobj.result)
                if (result) {

                    // location.replace("/www.baidu.com");

                    //此处跳转页面

                    alert("添加成功，请继续操作！");

                    //location.href="/localhost:8180/ssh-five/putong.jsp";

                } else {

                    alert("添加失败，请重新添加");
                    location.href = "dor_info_face_edit.jsp";
                }
            }
        });
    }
</script>
<script type="text/javascript">
    function photodelete() {
        var denumber = document.getElementById("denumber").value;
        var deperson = new Object();
        deperson.denumber = denumber;
        $.ajax({
            dataType: 'html',
            type: "post",
            url: "FaceDelete",
            data: deperson,
            success: function (data) {
                var deresult = eval(data);
                //alert(result)
                //var jsonobj=eval("("+data+")");
                //alert(jsonobj.result)
                if (deresult) {

                    // location.replace("/www.baidu.com");

                    //此处跳转页面

                    alert("删除成功，请继续操作！");

                    //location.href="/localhost:8180/ssh-five/putong.jsp";

                } else {

                    alert("删除失败，请重新添加");
                    location.href = "dor_info_face_edit.jsp";
                }
                ;
            }
        });
    }
</script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath }/assets/js/content.js"></script>

<!-- Chosen -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/chosen/chosen.jquery.js"></script>

<!-- JSKnob -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/jsKnob/jquery.knob.js"></script>

<!-- Input Mask-->
<script src="${pageContext.request.contextPath }/assets/js/plugins/jasny/jasny-bootstrap.min.js"></script>

<!-- Data picker -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Prettyfile -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>

<!-- NouSlider -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/nouslider/jquery.nouislider.min.js"></script>

<!-- Switchery -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/switchery/switchery.js"></script>

<!-- IonRangeSlider -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>

<!-- iCheck -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/iCheck/icheck.min.js"></script>

<!-- MENU -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- Color picker -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>

<!-- Clock picker -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/clockpicker/clockpicker.js"></script>

<!-- Image cropper -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/cropper/cropper.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/demo/form-advanced-demo.js"></script>
</body>
</html>
