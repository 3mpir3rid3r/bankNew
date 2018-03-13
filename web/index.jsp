<%-- 
    Document   : index
    Created on : Nov 14, 2017, 2:34:43 PM
    Author     : mmh
--%>

<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBS Login Form</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        <style>
            #login-username {
                border: 1px solid #ccc;
                height: 38px;
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
            }
        </style>
    </head>

    <body>
        <%
            if (request.getParameter("branch") != null) {
                List<List<Object>> branchList = (List<List<Object>>) request.getSession().getAttribute("branch");
                for (List b : branchList) {
                    if (b.get(0).toString().equals(request.getParameter("branch"))) {
                        String branch = request.getParameter("branch");
                        Cookie branchId = new Cookie("branchId", URLEncoder.encode(b.get(0).toString(), "UTF-8"));
                        Cookie branchName = new Cookie("branchName", URLEncoder.encode(b.get(1).toString(), "UTF-8"));
                        branchId.setMaxAge(30 * 24 * 60 * 60);
                        branchName.setMaxAge(30 * 24 * 60 * 60);
                        response.addCookie(branchId);
                        response.addCookie(branchName);
                    }
                }
            }
            String error = "";
            if (request.getParameter("error") != null) {
                error = request.getParameter("error").toString();
            }

        %>
        <!-- Top content -->
        <div class="top-content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <h1><strong>NBS</strong> Banking Solution</h1>
                        <div class="description">
                            <p>
                                This is <strong>NBS</strong> Banking System.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row" id="formLocation">
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Login to our site</h3>
                                <p>Enter your username and password to log on:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-lock"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form id="loginForm" role="form" action="LoginServlet" method="post" class="login-form" autocomplete="off">
                                <div id="messege" hidden class="form-group">
                                    <p style="color: #de615e; font-size: 18px">
                                        <strong>The user name or password is incorrect...!</strong>
                                    </p>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-username">Username</label>
                                    <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-password">Password</label>
                                    <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
                                </div>
                                <button type="submit" class="btn">Sign in!</button>
                            </form>
                            <div style="margin-bottom: 10px;padding-top: 10px;">
                                <a style="float: right;" href="#" class="forgot-password" data-toggle="modal" data-target="#resetModal">
                                    <strong>Forgot the password &nbsp; ?</strong>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--foget pass-->
        <div id="resetModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3><i class="fa fa-lock fa-4x"></i></h3>
                        <h2 class="text-center modal-title">Forgot Password?</h2>
                        <p>You can reset your password here.</p>
                    </div>
                    <div class="modal-body">
                        <form id="passwordForm" role="form" autocomplete="off" class="form" action="resetPasswordServlet" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="email" value="" placeholder="user code">
                                </div>
                            </div>
                            <div class="form-group">
                                <button id="reset" style="background-color: #2b669a;" type="submit" class="btn btn-primary btn-lg btn-block" id="load" data-loading-text="<i class='fa fa-spinner fa-spin '></i> Processing Order">Send password</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!--done modal-->
        <div id="done" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Mail Sent</h4>
                    </div>
                    <div class="modal-body">
                        <p id="messageModal" style="color: #31708f"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript -->
        <script src="assets/jquery/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/jquery/jquery.backstretch.min.js"></script>
        <script src="assets/jquery/scripts.js"></script>
        <script>
            $('#form-username').val('');
            $('#form-password').val('');
        </script>
        <script>
            $('#reset').on('click', function () {
                var $this = $(this);
                $this.button('loading');
                setTimeout(function () {
                    $this.button('reset');
                }, 8000);
            });
        </script>
        <script>
            var frm = $('#passwordForm');
            frm.submit(function (e) {
                e.preventDefault();
                $('resetButton').addClass('buttonload');
                $.ajax({
                    type: frm.attr('method'),
                    url: frm.attr('action'),
                    data: frm.serialize(),
                    success: function (data) {
                        if (data == 'true') {
                            $('#resetModal').modal('hide');
                            $('p#messageModal').text('Your password sent to your email');
                            $('#done').modal('show');
                            setTimeout(function () {
                                $('#done').modal('hide');
                            }, 1500);
                        } else if (data == 'false') {
                            $('#resetModal').modal('hide');
                            $('p#messageModal').text('Something went wrong Email send failed.<br>try again later.');
                            $('#done').modal('show');
                            setTimeout(function () {
                                $('#done').modal('hide');
                            }, 1500);
                        }
                    },
                    error: function (data) {
                        console.log('An error occurred.');
                        console.log(data);
                    },
                });
            });
        </script>
        <script>
            var frm = $('#loginForm');
            frm.submit(function (e) {
                e.preventDefault();
                $.ajax({
                    type: frm.attr('method'),
                    url: frm.attr('action'),
                    data: frm.serialize(),
                    success: function (data) {
                        window.location.assign(data);
                    },
                    error: function (data) {
                        window.location.assign(data);
                    },
                });
            });
        </script>
        <script>
            $('document').ready(function () {
                var error =<%=error%>;
                if (error == "1") {
                    $('#messege').removeAttr('hidden');
                    setTimeout(function () {
                        $('#messege').attr('hidden', "");
                    }, 2000);
                } else if (error = "cookie") {
                    $('#formLocation').load()
                }

            })
        </script>
    </body>
</html>
