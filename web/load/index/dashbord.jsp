<%-- 
    Document   : customerDashbord
    Created on : Jan 25, 2018, 8:18:43 AM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    a > div {
        width: 300px; 
    }
    a > div:hover {
        transition: width 0.1s, height 0.1s;
        width: 330px;
    }
    .info-box:hover {
        box-shadow: 5px 0px 40px rgba(0,0,0, .5);
    }
    .info-box:hover >.info-box-content{
        transition: padding-top 1s;
        padding-top: 28px;
    }
    .info-box-number:hover {
        color: #005983 !important;
    }
    .info-box-number{
        font-size: 15px ;
    }
    h4{
        margin-bottom: 06px;
        margin-top: 3px;
    }
    hr{
        height: 1px;
        background-color: black;
        margin-top: 0px;
        margin-bottom: 15px;
    }
</style>
<link href="css/newCss.css" rel="stylesheet" type="text/css"/>
<section class="content-header">
    <h1>
        මුදල් අයකැමි 
        <small>Home</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="javascript:void()" ><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="javascript:void()" >Forms</a></li>
        <li class="active">Advanced Elements</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>පාරිභෝගික තොරතුරු</strong></h4>
                            <hr>
                            <a class="dash" href="javascript:void()" data="load" data-load="load/teller/customerDetails.jsp">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="info-box dark">
                                        <span class="info-box-icon bg-blue-gradient"><i class="fa fa-user"></i></span>
                                        <div class="info-box-content dark">
                                            <span class="info-box-number text-black h6">පුද්ගලික</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a class="dash" href="javascript:void()"  data="load" data-load="load/teller/indastry.jsp">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="info-box dark">
                                        <span class="info-box-icon bg-green-gradient"><i class="fa fa-bank"></i></span>
                                        <div class="info-box-content dark">
                                            <span class="info-box-number text-black">ආයතනික</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a class="dash" href="javascript:void()"  data="load" data-load="load/teller/member.jsp">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="info-box dark">
                                        <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                        <div class="info-box-content dark">
                                            <span class="info-box-number text-black">සාමාජික</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







    <div class="row bg-top">
        <div class="col-md-12 bg-pad">
            <div class="box box-info bg-color">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>තැම්පත් ගණුදෙණු</strong></h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()"  data="load" data-load="load/savings/savingDetails.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-blue-gradient"><i class="fa fa-money"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">තැම්පත් තොරතුරු</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="../teller/savings_crdr.jsp?index">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-green-gradient"><i class="fa fa-download"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ඉතුරුම් ගිණුම බැර</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="../teller/savings_crdr.jsp?index=">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-upload"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ඉතුරුම් ගිණුම හර</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-green-gradient"><i class="fa fa-credit-card"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">චෙක්පත් තැම්පතු</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-credit-card"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">චෙක්පත් නිකුත්කිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-copy"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ගිණුමකින් හර කිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-percent"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">පොළී ගණනය</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-exchange"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ගිණුම් වර්ගය මාරුකිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()"  data="load" data-load="load/savings/savingCatogory.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-exchange"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">තැම්පත් වර්ගයන්</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>






    <div class="row bg-top">
        <div class="col-md-12 bg-pad">
            <div class="box box-info bg-color">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>ණය ගණුදෙණු</strong></h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()"  data="load" data-load="load/loan/loanDiteils.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-blue-gradient"><i class="fa fa-user"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය තොරතුරු</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()"  data="load" data-load="load/savings/savingsCrdr.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-green-gradient"><i class="fa fa-building-o"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය ගිණුම බැර</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()"  data="load" data-load="load/savings/bind.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය ගිණුම හර</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">චෙක්පත් මඟින් නිකුත්කිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">චෙක්පත් මඟින් අයකිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ලෙජර් ගිණුමකින් නිකුත්කිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ලෙජර් ගිණුමකින් අයකිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය ගිණුමෙන් හරවීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය ගිණුම් බද්ධ කිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="javascript:void()" >
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය වර්ගය වෙනස් කිරීම</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="javascript:void()" data="load" data-load="load/common/commonLedger.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය අයවිය යුතු ආකාරය</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    
                                    <a class="dash" href="javascript:void()"  data="load" data-load="load/loan/loanCatergory.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-red-gradient"><i class="fa fa-users"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">ණය වර්ගයන්</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





    <div class="row bg-top">
        <div class="col-md-12 bg-pad">
            <div class="box box-info bg-color">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>වෙනත්</strong></h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="../teller/savings_crdr.jsp?index=">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-blue-gradient"><i class="fa fa-user"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">හර සටහන්</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dash" href="../teller/savings_crdr.jsp?index=">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-green-gradient"><i class="fa fa-building-o"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">බැර සටහන්</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div class="row bg-top">
        <div class="col-md-12 bg-pad">
            <div class="box box-info bg-color">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>පොදු ලෙජරය</strong></h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="../teller/common_legger.jsp">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-blue-gradient"><i class="fa fa-user"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">පොදු ලෙජරය</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="row bg-top">
        <div class="col-md-12 bg-pad">
            <div class="box box-info bg-color">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>වාර්තා</strong></h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="../LoanDetailsServlet?loanType=3">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-blue-gradient"><i class="fa fa-user"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">දෛනික ගණුදෙණු</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div class="row bg-top">
        <div class="col-md-12 bg-pad">
            <div class="box box-info bg-color">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 ><strong>සියලුම ගනුදෙනු</strong></h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="dash" href="./view_AllTransactions.jsp?tellerIndexKey=mTBR">
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <div class="info-box dark">
                                                <span class="info-box-icon bg-blue-gradient"><i class="fa fa-user"></i></span>
                                                <div class="info-box-content dark">
                                                    <span class="info-box-number text-black">සියලුම ගණුදෙණු</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/loadPage.js" type="text/javascript"></script>
</section>