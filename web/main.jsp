<%-- 
  Document  : main
  Created on : Feb 23, 2018, 12:25:20 PM
  Author   : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String bankBranchName = "", bankBranchId = "";
            if (request.getSession().getAttribute("user") == null && request.getSession().getAttribute("branchName") == null && request.getSession().getAttribute("branchId") == null) {
                response.sendRedirect("index.jsp");
            } else {
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);

                bankBranchName = request.getSession().getAttribute("branchName").toString();
                bankBranchId = request.getSession().getAttribute("branchId").toString();
            }
        %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>NBS Banking Main</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="css/setDefalutFont.css">
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="plugins/iCheck/all.css"/>
        <link href="css/equal-height-columns.css" rel="stylesheet" type="text/css"/>
        <link href="bower_components/bootstrap-sweetalert-master/dist/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link href="css/newCss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <a href="javascript:void()" class="logo">
                    <span class="logo-mini"><b>M</b>W</span>
                    <span class="logo-lg"><b>Main</b>Window</span>
                </a>
                <nav class="navbar navbar-static-top">
                    <a href="javascript:void()" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li>
                                <a><i class="fa fa-home"></i> <span class="label label-warning"> <%=bankBranchId%></span>&nbsp; &nbsp;<%=bankBranchName%> </a>
                            </li>
                            <li>
                                <a href="logoutServlet" ><i class="fa fa-sign-out"></i> &nbsp; &nbsp;Logout</a>
                            </li>
                            <li>
                                <a href="javascript:void()" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <aside class="main-sidebar">
                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><%= request.getSession().getAttribute("user")%></p>
                            <a href="javascript:void()"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">MAIN NAVIGATION</li>
                        <li class=" treeview">
                            <a href="javascript:void()" data="load" data-load="load/index/dashbord.jsp">
                                <i class="fa fa-dashboard"></i><span>Dashbord</span>
                            </a>
                        </li>
                        <li class=" treeview">
                            <a href="javascript:void()" data="load" data-load="load/teller/index.jsp">
                                <i class="fa fa-dashboard"></i><span>මුදල් අයකැමි</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu ">
                                <li><a href="javascript:void()" data="load" data-load="load/teller/monySaving.jsp"><i class="fa fa-circle-o"></i>මුදල් තැම්පත්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/teller/monySaving.jsp"><i class="fa fa-circle-o"></i>ආපසු ගැනීම</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/teller/monyTranser.jsp"><i class="fa fa-circle-o"></i>මුදල් හුවමාරු</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/teller/loanPayment.jsp"><i class="fa fa-circle-o"></i>ණය අයකරගැනීම</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/teller/loanIssue.jsp"><i class="fa fa-circle-o"></i>ණය නිකුත් කිරීම</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>වෙනත් ලැබීම්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>වෙනත් ගෙවීම්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>උකස්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>වෙනත් ලැබීම්</a></li>
                            </ul>
                        </li>
                        <li class=" treeview">
                            <a href="javascript:void()" data="load" data-load="load/teller/index.jsp">
                                <i class="fa fa-dashboard"></i><span>පාරිභෝගික තොරතුරු</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="javascript:void()" data="load" data-load="load/teller/customerDetails.jsp"><i class="fa fa-circle-o"></i>පුද්ගලික</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/teller/indastry.jsp"><i class="fa fa-circle-o"></i>ආයතනික</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/teller/member.jsp"><i class="fa fa-circle-o"></i>සාමාජික</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="javascript:void()">
                                <i class="fa fa-dashboard"></i><span>තැම්පත්</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="javascript:void()" data="load" data-load="load/savings/savingDetails.jsp"><i class="fa fa-circle-o"></i>තැම්පත් තොරතුරු</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/savings/savingCatogory.jsp"><i class="fa fa-circle-o"></i>තැම්පත් වර්ගයන්</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>සම්පුර්නයෙන් බේරීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>කොටසක් බැදීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>නැවත තැබීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>උකස් වර්ගයන්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>සියළු උකස් දැකීම</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="javascript:void()">
                                <i class="fa fa-dashboard"></i><span>උකස් ගැනීම්</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="javascript:void()" data="load" data-load="load/pawning/pawningDiteils.jsp"><i class="fa fa-circle-o"></i>අත්තිකරම්</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>සම්පුර්නයෙන් බේරීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>කොටසක් බැදීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>නැවත තැබීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>උකස් වර්ගයන්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>සියළු උකස් දැකීම</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="javascript:void()">
                                <i class="fa fa-dashboard" ></i><span>ණය ලබාදීම්</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="javascript:void()" data="load" data-load="load/loan/loanDiteils.jsp"><i class="fa fa-circle-o"></i>ණය තොරතුරු</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/savings/savingsCrdr.jsp"><i class="fa fa-circle-o"></i>ණය ගිණුම බැර</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/savings/bind.jsp"><i class="fa fa-circle-o"></i>කොටසක් බැදීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>නැවත තැබීම</a></li> 
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>උකස් වර්ගයන්</a></li>
                                <li><a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i>සියළු උකස් දැකීම</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="javascript:void()">
                                <i class="fa fa-pie-chart"></i> <span>කලමණාකරු</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu" style="display: none;">
                                <li class="treeview">
                                    <a href="javascript:void()"><i class="fa fa-circle-o"></i> සාමාන්‍ය තොරතුරු
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right"></i>
                                        </span>
                                    </a>
                                    <ul class="treeview-menu" style="display: none;">
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/customerCatagory.jsp"><i class="fa fa-circle-o"></i>පාරිභෝගික වර්ගය</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/customerStatus.jsp"><i class="fa fa-circle-o"></i>පාරිභෝගික තත්වය</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/memberPosition.jsp"><i class="fa fa-circle-o"></i>සාමජිකයගේ ස්ථානය</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/memberStatus.jsp"><i class="fa fa-circle-o"></i>සාමජිකයගේ තත්වය</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/nationality.jsp"><i class="fa fa-circle-o"></i>ජාතිය</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/religion.jsp"><i class="fa fa-circle-o"></i>ආගම</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/status.jsp"><i class="fa fa-circle-o"></i>තත්වය</a></li>
                                        <li><a href="javascript:void()" data="load" data-load="load/reference/title.jsp"><i class="fa fa-circle-o"></i>විවාහක තත්වය</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i> තැන්පත් වර්ගීකරණය</a>
                                </li>
                                <li>
                                    <a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i> ණය වර්ගීකරණය</a>
                                </li>
                                <li>
                                    <a href="javascript:void()"data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i> තැන්පත් තොරතුරු</a>
                                </li>
                                <li>
                                    <a href="javascript:void()" data="load" data-load="load/load_2.jsp"><i class="fa fa-circle-o"></i> ණය තොරතුරු</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </section>
            </aside>
            <div class="content-wrapper">

            </div>
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.0.0
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="javascript:void()">NBS soft</a>.</strong> All rights
                reserved.
            </footer>
            <aside class="control-sidebar control-sidebar-dark">
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane" id="control-sidebar-home-tab">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-user bg-yellow"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                        <p>New phone +1(800)555-1234</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                        <p>nora@example.com</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-file-code-o bg-green"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                        <p>Execution time 5 seconds</p>
                                    </div>
                                </a>
                            </li>
                        </ul>

                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Custom Template Design
                                        <span class="label label-danger pull-right">70%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Update Resume
                                        <span class="label label-success pull-right">95%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Laravel Integration
                                        <span class="label label-warning pull-right">50%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Back End Framework
                                        <span class="label label-primary pull-right">68%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                                    </div>
                                </a>
                            </li>
                        </ul>

                    </div>
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                        <form method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Some information about this general settings option
                                </p>
                            </div>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Allow mail redirect
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Other sets of options are available
                                </p>
                            </div>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Expose author name in posts
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Allow the user to show his name in blog posts
                                </p>
                            </div>

                            <h3 class="control-sidebar-heading">Chat Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Show me as online
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                            </div>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Turn off notifications
                                    <input type="checkbox" class="pull-right">
                                </label>
                            </div>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Delete chat history
                                    <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                                </label>
                            </div>
                        </form>
                    </div>
                </div>
            </aside>
            <div class="control-sidebar-bg"></div>
        </div>

        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="bower_components/raphael/raphael.min.js"></script>
        <script src="bower_components/morris.js/morris.min.js"></script>
        <script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
        <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
        <script src="bower_components/moment/min/moment.min.js"></script>
        <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <script src="dist/js/adminlte.min.js"></script>
        <script src="dist/js/pages/dashboard.js"></script>
        <script src="dist/js/demo.js"></script>
        <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <script src="js/validate.js" type="text/javascript"></script>
        <script src="bower_components/datatables.net/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
        <script src="bower_components/bootstrap-sweetalert-master/dist/sweetalert.min.js" type="text/javascript"></script>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
        <script src="js/loadPage.js" type="text/javascript"></script>
    </body>
</html>
