<%-- 
    Document   : monyTanser
    Created on : Mar 1, 2018, 11:18:00 AM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <div class="box box-primary ">
                <div class="box-header">
                    <h3 class="box-title">බැරවන ගිණුම</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-8" >
                            <div class="form-group">

                                <!--<form action="../GetterMoneyTransactionServelet?searchingType=" method="post" name="accForm" onsubmit="validateGetAccountNo(this); return false;">-->

                                <label class="control-label col-sm-4 input-sm" style="font-size: 14px">ගිණුම් අංකය:</label>
                                <div class="col-md-7">
                                    <div class="input-group">
                                        <input class="form-control input-sm text-right convertSinhalaIskolaPotha" style="font-size: 17px;" autocomplete="off" placeholder="ගිණුම් අංකය" maxlength="15" name="brAccNo" id="brAccNo" value="" onkeyup="changeAccountNumber2()" type="text">

                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-flat btn-sm" type="button" onclick="brBrAccountAcction()"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </div>

                                <!--</form>-->

                            </div>
                        </div>
                        <div class="col-sm-4">
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
                    </div>
                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label class="control-label col-sm-4 input-sm" style="font-size: 14px">හුවමරුවන මුදල :</label>
                                <div class="col-md-7">
                                    <input class="form-control input-sm text-right convertSinhalaIskolaPotha" placeholder="0.00" style="font-size: 17px" name="nMinParticipant" data="validate" data-type="decimal" type="text">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="pull-right">
                                                <button style="font-weight: bold;" type="submit" class="btn btn-primary btn-sm">ගනුදෙනුව සිදු කරන්න</button>
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