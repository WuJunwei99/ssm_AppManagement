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

    <title>南昌大学贷款资助中心</title>

    <!-- Bootstrap -->
    <link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>贷款资助中心</span></a>
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


        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><small>学生基本信息</small></h3>
              </div>
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-secondary" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><small>这里将展示注册系统申请贷款学生的基本信息</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <table id="studentList" class="table table-striped table-bordered" style="width:1600px">
                      <thead>
                        <tr>
                          <th>学号</th>
                          <th>姓名</th>
                          <th>身份证</th>
                          <th>性别</th>
                          <th>民族</th>
                          <th>考生号</th>
                          <th>学院</th>
                          <th>专业</th>
                          <th>班级</th>
                          <th>联系电话</th>
                          <th>QQ</th>
                          <th>学费</th>
                          <th>住宿费</th>
                          <th>操作</th>
                        </tr>
                      </thead>


                      <tbody>

                      </tbody>
                    </table>
                    <div  class="c-pages">
                      <div class="cp-item">
                          <span>共</span>
                          <span id="cp-count">0</span>
                          <span>条</span>
                          <button id="home">首页</button>
                          <button id="prev">上页</button>
                          <button id="next">下页</button>
                          <button id="last">尾页</button>
                          <button id="goTo">转到</button>
                          <input type="number" id="goToPage" width="5" />
                          <span>页</span>
                      </div>
                      <div class="cp-item">
                          <span id="curr-page">1</span>
                          <span>/</span>
                          <span id="total-page">1</span>
                      </div>

                  </div>
                  </div>
                  </div>
              </div>
            </div>
                </div>
              </div>

          
            </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
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
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    <script type="text/javascript">
      $(function (){		
        $.ajax({
          type:"GET",		
          url:"../Students/list",			
          dataType:"json",
          async:false,
          success:function(data){			
          var tbody=$('<tbody></tbody>');
          for(var i=0;i<data.rows.length;i++){
            var val=data['rows'][i];
            var tr=$('<tr id=”studentInfo”></tr>');
            var clazz = val.clazz;
            var departmentName = "";
            var majorName = "";
            var classe = "";
            if(clazz!=null){
              departmentName = clazz.departmentName;
              majorName = clazz.majorName;
              classe = clazz.classe;
              grade = clazz.grade;
            }
            tr.append('<td>'+ val.studentNum + '</td>' + '<td>'+ val.name + '</td>'+ '<td>'+ val.idCard + '</td>'
            + '<td>'+ val.sex + '</td>'+ '<td>'+ val.nation + '</td>'+ '<td>'+ val.candidateNum + '</td>'
            + '<td>'+ departmentName + '</td>'+ '<td>'+ majorName + '</td>'+ '<td>'+ grade+"级"+ classe+"班" + '</td>'
            + '<td>'+ val.phone + '</td>'+ '<td>'+ val.qq + '</td>'+ '<td>'+ val.tuition + '</td>'+ '<td>'+ val.hotelExpense + '</td>'
            + '<td><a href="#" class="btn btn-sm btn-primary"> View </a>'
            + '<a href="#" class="btn btn-sm btn-primary"> Edit </a>'
            + '<a href="#" class="btn btn-sm btn-primary"> Delete </a></td>'
                            
            );
            tbody.append(tr);
            }
            $('#studentList tbody').replaceWith(tbody);
          }
          
        });
        
      });

      // li jquery object array
var newsLis = $("#studentList tbody").children();
// total news count
var count = newsLis.length;

// max count for one page
var ONE_PAGE_COUNT = 10;

// total pages
var totalPage = parseInt(count / ONE_PAGE_COUNT) + ((count % ONE_PAGE_COUNT) == 0? 0 : 1);

// init page
var currPage = 1;

// function used to set news count
function setUICount(count) {
    if (count == undefined)
        count = 0;
    $("#cp-count").text(count);
}

// function used to set total pages
function setUIPages(totalPage) {
    totalPage = Math.max(1, totalPage);
    $("#total-page").text(totalPage)
}

// update curr page
function setUICurrPage(currPage) {
    currPage = Math.max(1, currPage);
    $("#curr-page").text(currPage);
}

// 传入显示的page参数，显示对应页面的新闻列表，隐藏其他列表
function scanAllForShow(page) {
    // page at least 1 or max totalPage
    page = Math.max(1, Math.min(totalPage, page));
    for (var i = 0;i < count;i++) {
        if (parseInt(i / ONE_PAGE_COUNT) + 1 == page)
            $(newsLis[i]).attr("style", "");
        else
            $(newsLis[i]).attr("style", "display: none");
    }
}

function homePage() {
    currPage = 1;
    scanAllForShow(currPage);
    setUICurrPage(currPage);
}

function nexePage() {
    var last = currPage;
    if (last == totalPage)
        return;

    scanAllForShow(++currPage);

    setUICurrPage(currPage);
}

function prevPage() {
    var next = currPage;
    if (next <= 1) 
        return;

    scanAllForShow(--currPage);

    setUICurrPage(currPage);
}

function lastPage() {
    currPage = totalPage;
    scanAllForShow(currPage);
    setUICurrPage(currPage);
}

function goToPage() {
    var target = $("#goToPage").val();
    if (target == undefined)
        target = currPage;
    target = Math.max(1, Math.min(totalPage, target));
    currPage = target;
    scanAllForShow(target);
    setUICurrPage(currPage);
    $("#goToPage").val("");
}

// 页面加载完成后调用此函数
function init() {
    newsLis = $("#studentList tbody").children();
    count = newsLis.length;
    totalPage = parseInt(count / ONE_PAGE_COUNT) + ((count % ONE_PAGE_COUNT) == 0? 0 : 1);
    currPage = 1;
    setUICount(count);
    setUIPages(totalPage);
    setUICurrPage(currPage);
    scanAllForShow(currPage);
    // 注册点击函数
    $("#home").click(homePage);
    $("#prev").click(prevPage);
    $("#next").click(nexePage);
    $("#last").click(lastPage);
    $("#goTo").click(goToPage);


}

window.onload = function() {
    init();
}


      </script>
  </body>
</html>