<%-- 
    Document   : loanIssue
    Created on : Feb 26, 2018, 3:45:02 PM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="../../plugins/iCheck/all.css" rel="stylesheet" type="text/css"/>
<style>
    .row{
        padding-top: 5px;
    }
</style>
<section class="content-header">
    <h1>
        මුදල් අයකැමි 
        <small>Home</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Advanced Elements</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">ගිණුම් අංකය</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-5">  
                            <div class="form-group">
                                <form action="../GetterLoanTransactionServlet?" method="post" name="accForm" >
                                    <label class="col-md-4 control-label" id="accNumLabel"><h4><strong>ණය අංකය</strong></h4></label>
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size: larger;font-weight: bold" autocomplete="off" placeholder="ණය අංකය" maxlength="15" onkeyup="changeAccountNumber()" name="accountNumber" id="accountNumber" value="" type="text">
                                            <span class="input-group-btn">
                                                <button class="btn btn-info btn-flat" type="submit"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label input-sm text-center" name="cFullName" id="cFullName"><h4 style="font-style: italic;color: blue;font-size: 14px;">--------------------සම්පූර්ණ නම--------------------</h4></label>
                                    <label for="inputEmail3" class="col-md-12 control-label input-sm text-center" name="cPAddLine1" id="cPAddLine1"><h4 style="font-style: italic;color: blue;font-size: 14px">----------ලිපිනය----------</h4></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">ණය තොරතුරු</h3>
                </div>
                <div class="box-body" >
                    <div class="row">
                        <div class="form-group">
                            <label class="control-label col-md-5">අනුමත ණය මුදල :</label>
                            <div class="col-md-7">
                                <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size:17px;" placeholder="0.00" name="nApprovedAmount" id="nApprovedAmount" value="" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="control-label col-md-5 ">නිකුත් කල මුදල :</label>
                            <div class="col-md-7">
                                <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size:17px;" placeholder="0.00" name="nIssuedAmount" id="nIssuedAmount" value="" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="control-label col-md-5 ">නිකුත් කිරිමට ඇති ශේෂය :</label>
                            <div class="col-md-7">
                                <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size:17px;" placeholder="0.00" name="dDepositDate" id="dDepositDate" value="" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-5 ">අයවියයුතු පොළිය :</label>
                            <div class="col-md-7">
                                <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size:17px;" placeholder="0.00" name="dDepositDate" id="dDepositDate" value="" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <br>    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="">
                                    <div class="iradio_flat-green checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                    මුදලින්
                                </label>
                                <label class="">
                                    <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                    තැන්පත් ගිණුමකින්
                                </label>
                            </div>
                        </div>
                    </div>
                    <label style="color: #555555">හුවමාරුව</label>
                    <div class="row">
                        <div class="form-group">
                            <label class="control-label col-md-4 ">ගණුදෙනු දිනය :</label>
                            <label class="control-label col-md-2 " style="color: blue">2018-02-26</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="control-label col-md-4  ">නිකුත් කල මුදල :</label>
                            <div class="col-md-8">
                                <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size:17px;" placeholder="0.00" name="dDepositDate" id="dDepositDate" value="" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" id="accountLabelDiv" hidden="">
                            <label class="control-label col-md-12  " style="color: blue">තැම්පත් ගිණුමට දැමිය යුතු ණය මුදල</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" id="accountDiv" hidden="">
                            <label class="control-label col-md-4  ">ගිණුම් අංකය :</label>
                            <div class="col-md-8">
                                <input class="form-control  text-right convertSinhalaIskolaPotha" style="font-size:17px;" placeholder="0.00" name="nIssueToDepMFID" id="nIssueToDepMFID" value="" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-sm btn-info" onclick="" style="font-weight: bold;">නිකුත් කරන්න</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $('input[type="checkbox"].flat-red,input[type="radio"].flat-red').iCheck({
        checkboxClass: 'icheckbox_flat-green',
        radioClass: 'iradio_flat-green'
    })
</script>
</div>
</section>