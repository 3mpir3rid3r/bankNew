<%-- 
    Document   : monySaving
    Created on : Feb 23, 2018, 7:02:14 PM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">ගිණුම් අංකය</h3>
                </div>
                <div class="box-body">
                    <!-- Date -->
                    <div class="col-md-7">
                        <div class="input-group">
                            <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size: larger;font-weight: bolder" autocomplete="off" placeholder="ගිණුම් අංකය" maxlength="15" name="accountNumber" id="accountNumber" type="text">
                            <span class="input-group-btn">
                                <button class="btn btn-info btn-flat" type="submit"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right">පා.ලි. අංකය : </label>
                            <label class="col-md-6 input-sm" name="cCIFNo" id="cCIFNo"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right" style="margin-top: -15px">සාමාජික අංකය : </label>
                            <label class="col-md-6 input-sm" style="margin-top: -15px" name="cMemberShipNo" id="cMemberShipNo"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right" style="margin-top: -15px"> ජැ.හැ. අංකය : </label>
                            <label class="col-md-6 input-sm" name="cNICNo" style="margin-top: -15px" id="cNICNo"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right" style="margin-top: -15px">භාවිත නම : </label>
                            <label class="col-md-6 input-sm" name="cUseName" style="margin-top: -15px" id="cUseName"></label>
                        </div>
                    </div>
                    <!-- /.form group -->
                </div>
                <!-- /.box-body -->
            </div>
        </div>
        <div class="col-md-3">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Date picker</h3>
                </div>
                <div class="box-body" >
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right">පා.ලි. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cCIFNo" id="cCIFNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">සාමාජික අංකය : </label>
                        <label class="col-md-6 input-sm" style="margin-top: -15px" name="cMemberShipNo" id="cMemberShipNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px"> ජැ.හැ. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cNICNo" style="margin-top: -15px" id="cNICNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">භාවිත නම : </label>
                        <label class="col-md-6 input-sm" name="cUseName" style="margin-top: -15px" id="cUseName"></label>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>  
    </div>
    <div class="row">

        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-body">
                    <form action="NewBnkDepDepositTransactionServlet" method="POST">

                        <div class="row">
                            <div class="form-group">
                                <label class="control-label col-md-4 ">ගණුදෙණුව කල දිනය :</label>
                                <div class="col-md-8">
                                    <input class="form-control text-center convertSinhalaIskolaPotha" style="font-size:15px;" name="dDepositDate" id="dDepositDate" value="2018-02-23" type="date">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group" >
                                <label class="control-label col-md-4 ">බිල් අංකය 1:</label>
                                <div class="col-md-8">
                                    <input required="" class="form-control  text-left convertSinhalaIskolaPotha" placeholder="0"  maxlength="25" name="cReceiptNo" id="cReceiptNo" value="" data="validate" data-type="number" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group" >
                                <label class="control-label col-md-4 ">බිල් අංකය 2:</label>
                                <div class="col-md-8">
                                    <input class="form-control  text-left convertSinhalaIskolaPotha" placeholder="0" style="font-size:17px;" maxlength="25" name="cReceiptNo2" id="cReceiptNo2" value="" data="validate" data-type="number" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group" >
                                <label class="control-label col-md-4 ">ශේෂය :</label>
                                <div class="col-md-8">
                                    <input class="form-control  text-right convertSinhalaIskolaPotha" disabled="" placeholder="0.0" style="font-size:17px;" maxlength="25" name="nCurBookBalance" id="nCurBookBalance" value="" data="validate" data-type="decimal" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group" >
                                <label class="control-label col-md-4 "> රැදවු මුදල :</label>
                                <div class="col-md-8">
                                    <input class="form-control  text-right convertSinhalaIskolaPotha" disabled="" placeholder="0.0" style="font-size:17px;" maxlength="25" name="nHoldedAmount" id="nHoldedAmount" value="" data="validate" data-type="decimal" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group" >
                                <label class="control-label col-md-4 ">බැර නොවු පොළිය :</label>
                                <div class="col-md-8">
                                    <input class="form-control  text-right convertSinhalaIskolaPotha" disabled="" placeholder="0.0" style="font-size:17px;" maxlength="25" name="nNotCreditIntBalance" id="nNotCreditIntBalance" value="" data="validate" data-type="decimal" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group" >
                                <label class="control-label col-md-4 "> ගත හැකි මුදල :</label>
                                <div class="col-md-8">
                                    <input class="form-control  text-right convertSinhalaIskolaPotha" disabled="" placeholder="0.0" style="font-size:17px;" maxlength="25" name="nAvailableBalance" id="nAvailableBalance" value="" data="validate" data-type="decimal" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <label class="control-label col-md-4 "><b>තැම්පත් මුදල :</b></label>
                                <div class="col-md-8">
                                    <input class="form-control text-right convertSinhalaIskolaPotha" placeholder="0.00" style="font-size:large;color: blue" maxlength="30" name="nPaymentVal" id="nPaymentVal" value="" data="validate" data-type="decimal" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <label class="control-label col-md-4 "></label>
                                <div class="col-md-8 ">
                                    <input type="submit" value="ගණුදෙණුව සිදුරන්න" class="btn btn-primary pull-right text-bold"/>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.box-body -->
            </div>
        </div>

        <div class="col-md-3">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Date picker</h3>
                </div>
                <div class="box-body" >
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right">පා.ලි. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cCIFNo" id="cCIFNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">සාමාජික අංකය : </label>
                        <label class="col-md-6 input-sm" style="margin-top: -15px" name="cMemberShipNo" id="cMemberShipNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px"> ජැ.හැ. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cNICNo" style="margin-top: -15px" id="cNICNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">භාවිත නම : </label>
                        <label class="col-md-6 input-sm" name="cUseName" style="margin-top: -15px" id="cUseName"></label>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>
