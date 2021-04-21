<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>


	<!-- Custom Theme Style -->
	<link href="../build/css/custom.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    
	<!-- iCheck -->
	<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
  </head>
  <body class="nav-md"  onload="getProvince()">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html">Dashboard</a></li>
                      <li><a href="index2.html">Dashboard2</a></li>
                      <li><a href="index3.html">Dashboard3</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.html">General Elements</a></li>
                      <li><a href="media_gallery.html">Media Gallery</a></li>
                      <li><a href="typography.html">Typography</a></li>
                      <li><a href="icons.html">Icons</a></li>
                      <li><a href="glyphicons.html">Glyphicons</a></li>
                      <li><a href="widgets.html">Widgets</a></li>
                      <li><a href="invoice.html">Invoice</a></li>
                      <li><a href="inbox.html">Inbox</a></li>
                      <li><a href="calendar.html">Calendar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">Tables</a></li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                      <li><a href="fixed_footer.html">Fixed Footer</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.html">403 Error</a></li>
                      <li><a href="page_404.html">404 Error</a></li>
                      <li><a href="page_500.html">500 Error</a></li>
                      <li><a href="plain_page.html">Plain Page</a></li>
                      <li><a href="login.html">Login Page</a></li>
                      <li><a href="pricing_tables.html">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>填写贷款信息</h3>
              </div>
            </div>


            <div class="row">

              <div class="col-md-12 col-sm-12">
                <div class="x_panel">
                  <div class="x_content" >

                    <!-- Smart Wizard -->
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              基本信息<br />
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              学籍信息<br />
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              联系人信息<br />
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                              贷款信息<br />
                                          </span>
                          </a>
                        </li>
                      </ul>
                      <div id="step-1" style="height:600px">
                        <form class="form-horizontal form-label-left" id="baseInfo">
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" name="studentNum">学号<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" name="studentNum" id="studentNum" required="required" class="form-control  "><p></p>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">姓名<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="name" name="name" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">身份证<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="idCard" class="form-control col" type="text" name="idCard">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">性别<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <div id="gender" style="margin-top:7px"> 
                                <p>
                                  男
                                  <input type="radio" class="flat" name="sex" id="genderM" value="M" checked="" required /> 女
                                  <input type="radio" class="flat" name="sex" id="genderF" value="F" />
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">民族<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="nation" name="nation" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">联系电话<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="phone" class="form-control col" type="text" name="phone">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">QQ<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="qq" class="form-control col" type="text" name="qq">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align" style="margin-top:8px">请填写家庭地址<span class="required">*</span></label>
                            <label for="middle-name" class="col-form-label col-md-2 col-sm-2 label-align">
                              <select id="selprovince" class="form-control" required onchange="getCity()">
                                <option value="">-请选择省份-</option>
                              </select>
                            </label>
                            <label for="middle-name" class="col-form-label col-md-2 col-sm-2 label-align">
                              <select id="selcity" class="form-control" required onchange="getArea()">
                                <option value="">-请选择城市-</option>
                              </select>
                            </label>
                            <label for="middle-name" class="col-form-label col-md-2 col-sm-2 label-align">
                              <select id="selarea" class="form-control" required>
                                <option value="">-请选择地区-</option>
                              </select>
                            </label>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">请输入详细地址<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="address" required="required" class="form-control ">
                            </div>
                          </div>
                        </form>

                      </div>
                      <div id="step-2" style="height:320px">
                        <form class="form-horizontal form-label-left" id="schoolRoll">
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align" style="margin-top:8px">请填写班级信息<span class="required">*</span></label>
                            <label for="middle-name" class="col-form-label col-md-2 col-sm-2 label-align">
                              <select id="seldepartment" class="form-control" required onchange="getMajor()">
                                <option value="" >-请选择学院-</option>
                              </select>
                            </label>
                            <label for="middle-name" class="col-form-label col-md-2 col-sm-2 label-align">
                              <select id="selmajor" class="form-control" required onchange="getClazz()">
                                <option value="" >-请选择专业-</option>
                              </select>
                            </label>
                            <label for="middle-name" class="col-form-label col-md-2 col-sm-2 label-align">
                              <select id="selclazz" class="form-control" required>
                                <option value="" >-请选择班级-</option>
                              </select>
                            </label>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">考生号<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="candidateNum" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">学费<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="tuition">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">住宿费<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="hotelExpense">
                            </div>
                          </div>
                        </form>
                      </div>
                      <div id="step-3">
                        <form class="form-horizontal form-label-left" id="contactsInfo">
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">与联系人1关系<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <div id="relationship1" style="margin-top:7px"> 
                                <p style="margin-top:-10px">
                                  <div class="col-md-2 col-sm-2 ">父亲<input type="radio" class="flat" name="relationship1"  value="父亲" checked="" required /></div>
                                  <div class="col-md-2 col-sm-2 ">母亲<input type="radio" class="flat" name="relationship1"  value="母亲" /></div>
                                  <div class="col-md-2 col-sm-2 ">其他<input type="radio" class="flat" name="relationship1"  value="其他" /></div>
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">姓名<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="name1" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">电话<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="phone1">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">工作地址<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="workAddress1">
                            </div>
                          </div>
                          <div class="clearfix"></div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">与联系人2关系<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <div id="relationship2" style="margin-top:7px"> 
                                <p style="margin-top:-10px">
                                  <div class="col-md-2 col-sm-2 ">父亲<input type="radio" class="flat" name="relationship2"  value="父亲"/></div>
                                  <div class="col-md-2 col-sm-2 ">母亲<input type="radio" class="flat" name="relationship2" value="母亲" checked="" required /></div>
                                  <div class="col-md-2 col-sm-2 ">其他<input type="radio" class="flat" name="relationship2" value="其他" /></div>
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">姓名<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="name2" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">电话<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="phone2">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">工作地址<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="workAddress2">
                            </div>
                          </div>
                        </form>
                      </div>
                      <div id="step-4">
                        <form class="form-horizontal form-label-left" id="contractInfo">
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">贷款类型<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 ">
                              <div id="contractBankType" style="margin-top:7px"> 
                                <p style="margin-top:-10px">
                                  <div class="col-md-4 col-sm-4 ">国家开发银行<input type="radio" class="flat" name="contractBankType"  value="0" checked="" required /></div>
                                  <div class="col-md-4 col-sm-4 ">农村信用合作联社<input type="radio" class="flat" name="contractBankType"  value="1" /></div>
                                  <div class="col-md-4 col-sm-4 ">特殊银行<input type="radio" class="flat" name="contractBankType"  value="2" /></div>
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">合同编号<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="first-name" required="required" class="form-control name="contractId">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">贷款金额<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="amount" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">贷款机构</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="lender">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">贷款分支机构<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="branchLender" required="required" class="form-control ">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">经办人</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control col" type="text" name="agent">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">批准日期<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" type="text" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)" name="approveDate">
                              <script>
                                function timeFunctionLong(input) {
                                  setTimeout(function() {
                                    input.type = 'text';
                                  }, 60000);
                                }
                              </script>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">开始还款日<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" type="text" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)" name="beginDate">
                              <script>
                                function timeFunctionLong(input) {
                                  setTimeout(function() {
                                    input.type = 'text';
                                  }, 60000);
                                }
                              </script>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">结束还款日<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" type="text" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)" name="endDate">
                              <script>
                                function timeFunctionLong(input) {
                                  setTimeout(function() {
                                    input.type = 'text';
                                  }, 60000);
                                }
                              </script>
                            </div>
                          </div>
                        </form>
                      </div>

                    </div>
                    <!-- End SmartWizard Content -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->


        <!-- /footer content -->
      </div>
    </div>


    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="../vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	<!-- iCheck -->
	<script src="../vendors/iCheck/icheck.min.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>
	<!-- Parsley -->
	<script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
  <script type="text/javascript">

function getProvince() {
	$.ajax( {
		type :'post',
		url :'../Area/getProvince',
		dataType :'json',
		success : function(data) {
      for(var i=0;i<data.rows.length;i++){
        var entry=data['rows'][i];
        var html = "<option value='" + entry.provinceID + "'>"
						+ entry.province + "</option>";
            $("#selprovince").append(html);
      }
		}
	});
}

function getCity() {

	$("#selcity option[value!=0]").remove();
	$("#selarea option[value!=0]").remove();
	var object = $("#selprovince");
	if (object.val() != 0) {
		$.ajax( {
			type :'post',
			url :'../Area/getCity',
			data : {
				id :object.val()
			},
			dataType :'json',
			success : function(data) {
        for(var i=0;i<data.rows.length;i++){
          var entry=data['rows'][i];
          var html = "<option value='" + entry["cityID"] + "'>"
							+ entry["city"] + "</option>";
					$("#selcity").append(html);
        }
			}
		});
	}

}

function getArea() {

	$("#selarea option[value!=0]").remove();
	var object = $("#selcity");
	if (object.val() != 0) {
		$.ajax( {
			type :'post',
			url :'../Area/getArea',
			data : {
				id :object.val()
			},
			dataType :'json',
			success : function(data) {
        for(var i=0;i<data.rows.length;i++){
          var entry=data['rows'][i];
					var html = "<option value='" + entry["areaID"] + "'>"
							+ entry["area"] + "</option>";
					$("#selarea").append(html);
				}
			}
		});
	}
}
function getDepartment() {
	$.ajax( {
		type :'post',
		url :'../Clazz/getDepartment',
		dataType :'json',
		success : function(data) {
      for(var i=0;i<data.rows.length;i++){
        var entry=data['rows'][i];
        var html = "<option value='" + entry.departmentId + "'>"
						+ entry.departmentName + "</option>";
            $("#seldepartment").append(html);
      }
		}
	});
}

function getMajor() {

	$("#selmajor option[value!=0]").remove();
	$("#selclazz option[value!=0]").remove();
	var object = $("#seldepartment");
	if (object.val() != 0) {
		$.ajax( {
			type :'post',
			url :'../Clazz/getMajor',
			data : {
				id :object.val()
			},
			dataType :'json',
			success : function(data) {
        for(var i=0;i<data.rows.length;i++){
          var entry=data['rows'][i];
          var html = "<option value='" + entry["majorId"] + "'>"
							+ entry["majorName"] + "</option>";
					$("#selmajor").append(html);
        }
			}
		});
	}

}

function getClazz() {

	$("#selclazz option[value!=0]").remove();
	var object = $("#selmajor");
	if (object.val() != 0) {
		$.ajax( {
			type :'post',
			url :'../Clazz/getClazz',
			data : {
				id :object.val()
			},
			dataType :'json',
			success : function(data) {
        for(var i=0;i<data.rows.length;i++){
          var entry=data['rows'][i];
					var html = "<option value='" + entry["classId"] + "'>"
							+ entry["grade"]+"级"+entry["classe"] + "班</option>";
					$("#selclazz").append(html);
				}
			}
		});
	}
}
	window.onload=function(){
    getProvince();
    getDepartment();
  }

//新增
function SmartWizard(target, options) {
    this.target       = target;
    this.options      = options;
    this.curStepIdx   = options.selected;
    this.steps        = $(target).children("ul").children("li").children("a"); // Get all anchors
    this.contentWidth = 0;
    this.msgBox = $('<div class="msgBox"><div class="content"></div><a href="#" class="close">X</a></div>');
    this.elmStepContainer = $('<div></div>').addClass("stepContainer");
    this.loader = $('<div>Loading</div>').addClass("loader");
    this.buttons = {
        next : $('<a>'+options.labelNext+'</a>').attr("href","#").addClass("buttonNext"),
        previous : $('<a>'+options.labelPrevious+'</a>').attr("href","#").addClass("buttonPrevious"),
        finish  : $('<a>'+options.labelFinish+'</a>').attr("href","#").addClass("buttonFinish")
    };

    /*
     * Private functions
     */

    var _init = function($this) {
        var elmActionBar = $('<div></div>').addClass("actionBar");
        elmActionBar.append($this.msgBox);
        $('.close',$this.msgBox).click(function() {
            $this.msgBox.fadeOut("normal");
            return false;
        });

        var allDivs = $this.target.children('div');
        $this.target.children('ul').addClass("anchor");
        allDivs.addClass("content");

        // highlight steps with errors
        if($this.options.errorSteps && $this.options.errorSteps.length>0){
            $.each($this.options.errorSteps, function(i, n){
                $this.setError({ stepnum: n, iserror:true });
            });
        }

        $this.elmStepContainer.append(allDivs);
        elmActionBar.append($this.loader);
        $this.target.append($this.elmStepContainer);
        elmActionBar.append($this.buttons.finish)
                    .append($this.buttons.next)
                    .append($this.buttons.previous);
        $this.target.append(elmActionBar);
        this.contentWidth = $this.elmStepContainer.width();

        $($this.buttons.next).click(function() {
            $this.goForward();
            return false;
        });
        $($this.buttons.previous).click(function() {
            $this.goBackward();
            return false;
        });
        $($this.buttons.finish).click(function() {
            if(!$(this).hasClass('buttonDisabled')){
    
                if($.isFunction($this.options.onFinish)) {
                    var context = { fromStep: $this.curStepIdx + 1 };
                    if(!$this.options.onFinish.call(this,$($this.steps), context)){
                        return false;
                    }
                }else{
                    var student = new Object();
                    student["studentNum"] = document.getElementById("studentNum").value;
                    student["name"] = document.getElementById("name").value;
                    student["idCard"] = document.getElementById("idCard").value;
                    student["nation"] = document.getElementById("nation").value;
                    student["phone"] = document.getElementById("phone").value;
                    student["qq"] = document.getElementById("qq").value;
                    student["sex"] = document.getElementById("gender").value;
                    var contract =  {};
                    contract.student = student;
                    var studentJson = JSON.stringify(contract);
                    let json0 = $('#baseInfo').serialize();
                    let json1 = $('#schoolRoll').serialize();
                    let json2 = $('#contactsInfo').serialize();
                    let json3 = $('#contractInfo').serialize();
                    let json = json0 + '&'+json1 + '&'+json2 + '&'+json3 +'&student='+studentJson;
                    console.log('json : ',json);
                    $.ajax({
                      url: "../Contract/save",
                      type:"POST",
                      contentType:"application/json",
                      data:JSON.stringify(contract),//"{"name":"展示","users":{"user1":{"name":"李四","age":1},"user2":{"name":"网四","age":23}}}"
                      dataType:"json",
                      success:function(data){
                      }
                    })

                    // $.post("../Contract/save",JSON.stringify(contract), function(data){
                    //     if(data.status == 200){
                    //         $.messager.alert('提示','更新会员成功!');
                    //         $('#userEdit').window('close');
                    //         $("#userList").datagrid("reload");
                    //         clearForm();
                    //     }else{
                    //         $.messager.alert('提示','更新会员失败!');
                    //     }
                    // });
                }
            }
            return false;
        });

        $($this.steps).bind("click", function(e){
            if($this.steps.index(this) == $this.curStepIdx){
                return false;
            }
            var nextStepIdx = $this.steps.index(this);
            var isDone = $this.steps.eq(nextStepIdx).attr("isDone") - 0;
            if(isDone == 1){
                _loadContent($this, nextStepIdx);
            }
            return false;
        });

        // Enable keyboard navigation
        if($this.options.keyNavigation){
            $(document).keyup(function(e){
                if(e.which==39){ // Right Arrow
                    $this.goForward();
                }else if(e.which==37){ // Left Arrow
                    $this.goBackward();
                }
            });
        }
        //  Prepare the steps
        _prepareSteps($this);
        // Show the first slected step
        _loadContent($this, $this.curStepIdx);
    };

    var _prepareSteps = function($this) {
        if(! $this.options.enableAllSteps){
            $($this.steps, $this.target).removeClass("selected").removeClass("done").addClass("disabled");
            $($this.steps, $this.target).attr("isDone",0);
        }else{
            $($this.steps, $this.target).removeClass("selected").removeClass("disabled").addClass("done");
            $($this.steps, $this.target).attr("isDone",1);
        }

        $($this.steps, $this.target).each(function(i){
            $($(this).attr("href").replace(/^.+#/, '#'), $this.target).hide();
            $(this).attr("rel",i+1);
        });
    };

    var _step = function ($this, selStep) {
        return $(
            $(selStep, $this.target).attr("href").replace(/^.+#/, '#'),
            $this.target
        );
    };

    var _loadContent = function($this, stepIdx) {
        var selStep = $this.steps.eq(stepIdx);
        var ajaxurl = $this.options.contentURL;
        var ajaxurl_data = $this.options.contentURLData;
        var hasContent = selStep.data('hasContent');
        var stepNum = stepIdx+1;
        if (ajaxurl && ajaxurl.length>0) {
            if ($this.options.contentCache && hasContent) {
                _showStep($this, stepIdx);
            } else {
                var ajax_args = {
                    url: ajaxurl,
                    type: "POST",
                    data: ({step_number : stepNum}),
                    dataType: "text",
                    beforeSend: function(){
                        $this.loader.show();
                    },
                    error: function(){
                        $this.loader.hide();
                    },
                    success: function(res){
                        $this.loader.hide();
                        if(res && res.length>0){
                            selStep.data('hasContent',true);
                            _step($this, selStep).html(res);
                            _showStep($this, stepIdx);
                        }
                    }
                };
                if (ajaxurl_data) {
                    ajax_args = $.extend(ajax_args, ajaxurl_data(stepNum));
                }
                $.ajax(ajax_args);
            }
        }else{
            _showStep($this,stepIdx);
        }
    };

    var _showStep = function($this, stepIdx) {
        var selStep = $this.steps.eq(stepIdx);
        var curStep = $this.steps.eq($this.curStepIdx);
        if(stepIdx != $this.curStepIdx){
            if($.isFunction($this.options.onLeaveStep)) {
                var context = { fromStep: $this.curStepIdx+1, toStep: stepIdx+1 };
                if (! $this.options.onLeaveStep.call($this,$(curStep), context)){
                    return false;
                }
            }
        }
        $this.elmStepContainer.height(_step($this, selStep).outerHeight());
        var prevCurStepIdx = $this.curStepIdx;
        $this.curStepIdx =  stepIdx;
        if ($this.options.transitionEffect == 'slide'){
            _step($this, curStep).slideUp("fast",function(e){
                _step($this, selStep).slideDown("fast");
                _setupStep($this,curStep,selStep);
            });
        } else if ($this.options.transitionEffect == 'fade'){
            _step($this, curStep).fadeOut("fast",function(e){
                _step($this, selStep).fadeIn("fast");
                _setupStep($this,curStep,selStep);
            });
        } else if ($this.options.transitionEffect == 'slideleft'){
            var nextElmLeft = 0;
            var nextElmLeft1 = null;
            var nextElmLeft = null;
            var curElementLeft = 0;
            if(stepIdx > prevCurStepIdx){
                nextElmLeft1 = $this.contentWidth + 10;
                nextElmLeft2 = 0;
                curElementLeft = 0 - _step($this, curStep).outerWidth();
            } else {
                nextElmLeft1 = 0 - _step($this, selStep).outerWidth() + 20;
                nextElmLeft2 = 0;
                curElementLeft = 10 + _step($this, curStep).outerWidth();
            }
            if (stepIdx == prevCurStepIdx) {
                nextElmLeft1 = $($(selStep, $this.target).attr("href"), $this.target).outerWidth() + 20;
                nextElmLeft2 = 0;
                curElementLeft = 0 - $($(curStep, $this.target).attr("href"), $this.target).outerWidth();
            } else {
                $($(curStep, $this.target).attr("href"), $this.target).animate({left:curElementLeft},"fast",function(e){
                    $($(curStep, $this.target).attr("href"), $this.target).hide();
                });
            }

            _step($this, selStep).css("left",nextElmLeft1).show().animate({left:nextElmLeft2},"fast",function(e){
                _setupStep($this,curStep,selStep);
            });
        } else {
            _step($this, curStep).hide();
            _step($this, selStep).show();
            _setupStep($this,curStep,selStep);
        }
        return true;
    };

    var _setupStep = function($this, curStep, selStep) {
        $(curStep, $this.target).removeClass("selected");
        $(curStep, $this.target).addClass("done");

        $(selStep, $this.target).removeClass("disabled");
        $(selStep, $this.target).removeClass("done");
        $(selStep, $this.target).addClass("selected");

        $(selStep, $this.target).attr("isDone",1);

        _adjustButton($this);

        if($.isFunction($this.options.onShowStep)) {
            var context = { fromStep: parseInt($(curStep).attr('rel')), toStep: parseInt($(selStep).attr('rel')) };
            if(! $this.options.onShowStep.call(this,$(selStep),context)){
                return false;
            }
        }
        if ($this.options.noForwardJumping) {
            // +2 == +1 (for index to step num) +1 (for next step)
            for (var i = $this.curStepIdx + 2; i <= $this.steps.length; i++) {
                $this.disableStep(i);
            }
        }
    };

    var _adjustButton = function($this) {
        if (! $this.options.cycleSteps){
            if (0 >= $this.curStepIdx) {
                $($this.buttons.previous).addClass("buttonDisabled");
				if ($this.options.hideButtonsOnDisabled) {
                    $($this.buttons.previous).hide();
                }
            }else{
                $($this.buttons.previous).removeClass("buttonDisabled");
                if ($this.options.hideButtonsOnDisabled) {
                    $($this.buttons.previous).show();
                }
            }
            if (($this.steps.length-1) <= $this.curStepIdx){
                $($this.buttons.next).addClass("buttonDisabled");
                if ($this.options.hideButtonsOnDisabled) {
                    $($this.buttons.next).hide();
                }
            }else{
                $($this.buttons.next).removeClass("buttonDisabled");
                if ($this.options.hideButtonsOnDisabled) {
                    $($this.buttons.next).show();
                }
            }
        }
        // Finish Button
        if (! $this.steps.hasClass('disabled') || $this.options.enableFinishButton){
            $($this.buttons.finish).removeClass("buttonDisabled");
            if ($this.options.hideButtonsOnDisabled) {
                $($this.buttons.finish).show();
            }
        }else{
            $($this.buttons.finish).addClass("buttonDisabled");
            if ($this.options.hideButtonsOnDisabled) {
                $($this.buttons.finish).hide();
            }
        }
    };

    /*
     * Public methods
     */

    SmartWizard.prototype.goForward = function(){
        var nextStepIdx = this.curStepIdx + 1;
        var reg = new RegExp("^[0-9]*$");

        if(nextStepIdx==1){
          var studentNum = document.getElementById("studentNum").value;
          var name = document.getElementById("name").value;
          var idCard = document.getElementById("idCard").value;
          var nation = document.getElementById("nation").value;
          var phone = document.getElementById("phone").value;
          var qq = document.getElementById("qq").value;
          var sex = document.getElementById("gender").value;
          if(studentNum!=null){
            if(!reg.test(studentNum)){
              var html = "不能为空";
              $("#studentNum").parent("div").children("p").empty();
              $("#studentNum").parent("div").children("p").append(html);
              return false;
            }
          }
        }
        if (this.steps.length <= nextStepIdx){
            if (! this.options.cycleSteps){
                return false;
            }
            nextStepIdx = 0;
        }
        _loadContent(this, nextStepIdx);
    };

    SmartWizard.prototype.goBackward = function(){
        var nextStepIdx = this.curStepIdx-1;
        if (0 > nextStepIdx){
            if (! this.options.cycleSteps){
                return false;
            }
            nextStepIdx = this.steps.length - 1;
        }
        _loadContent(this, nextStepIdx);
    };

    SmartWizard.prototype.goToStep = function(stepNum){
        var stepIdx = stepNum - 1;
        if (stepIdx >= 0 && stepIdx < this.steps.length) {
            _loadContent(this, stepIdx);
        }
    };
    SmartWizard.prototype.enableStep = function(stepNum) {
        var stepIdx = stepNum - 1;
        if (stepIdx == this.curStepIdx || stepIdx < 0 || stepIdx >= this.steps.length) {
            return false;
        }
        var step = this.steps.eq(stepIdx);
        $(step, this.target).attr("isDone",1);
        $(step, this.target).removeClass("disabled").removeClass("selected").addClass("done");
    }
    SmartWizard.prototype.disableStep = function(stepNum) {
        var stepIdx = stepNum - 1;
        if (stepIdx == this.curStepIdx || stepIdx < 0 || stepIdx >= this.steps.length) {
            return false;
        }
        var step = this.steps.eq(stepIdx);
        $(step, this.target).attr("isDone",0);
        $(step, this.target).removeClass("done").removeClass("selected").addClass("disabled");
    }
    SmartWizard.prototype.currentStep = function() {
        return this.curStepIdx + 1;
    }

    SmartWizard.prototype.showMessage = function (msg) {
        $('.content', this.msgBox).html(msg);
        this.msgBox.show();
    }
    SmartWizard.prototype.hideMessage = function () {
        this.msgBox.fadeOut("normal");
    }
    SmartWizard.prototype.showError = function(stepnum) {
        this.setError(stepnum, true);
    }
    SmartWizard.prototype.hideError = function(stepnum) {
        this.setError(stepnum, false);
    }
    SmartWizard.prototype.setError = function(stepnum,iserror) {
        if (typeof stepnum == "object") {
            iserror = stepnum.iserror;
            stepnum = stepnum.stepnum;
        }

        if (iserror){
            $(this.steps.eq(stepnum-1), this.target).addClass('error')
        }else{
            $(this.steps.eq(stepnum-1), this.target).removeClass("error");
        }
    }

    SmartWizard.prototype.fixHeight = function(){
        var height = 0;

        var selStep = this.steps.eq(this.curStepIdx);
        var stepContainer = _step(this, selStep);
        stepContainer.children().each(function() {
            height += $(this).outerHeight();
        });

        // These values (5 and 20) are experimentally chosen.
        stepContainer.height(height + 5);
        this.elmStepContainer.height(height + 20);
    }

    _init(this);
};


  </script>

  </body>
</html>