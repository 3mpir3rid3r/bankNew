<%-- 
    Document   : customer
    Created on : Feb 23, 2018, 2:24:52 PM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .row{
        padding-top: 5px;
    }
    .box{
        height: auto ;
    }
</style>
<section class="content-header">
    <h1>
        ණය අයකරගැනීම
        <small>මුදලින්</small>
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
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-5">  
                            <div class="form-group">
                                <form action="../GetterLoanTransactionServlet" method="post" name="accForm">
                                    <label class="col-md-4 control-label" id="accNumLabel" name="accNumLabel"><h4><strong>ණය අංකය</strong></h4></label>
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <input class="form-control text-right" style="font-size: larger;font-weight: bold" autocomplete="off" placeholder="ණය අංකය" maxlength="15" onkeyup="changeAccountNumber()" name="accountNumber" id="accountNumber" value="" type="text">
                                            <span class="input-group-btn">
                                                <button class="btn btn-info btn-flat" type="submit"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12" >
                                <div class="row">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label  text-center" name="cFullName" id="cFullName"><h4 style="font-style: italic;color: blue;font-size: 12px;">--------------------සම්පූර්ණ නම--------------------</h4></label>
                                        <label for="inputEmail3" class="col-md-12 control-label  text-center" name="cPAddLine1" id="cPAddLine1"><h4 style="font-style: italic;color: blue;font-size: 12px">----------ලිපිනය----------</h4></label>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="col-md-7  text-right">ණය ගිණුමේ නම : </label>
                                <label class="col-md-5 " name="cCIFNo" id="cCIFNo"></label>
                            </div>
                            <div class="form-group">
                                <label class="col-md-7  text-right" >ණය වර්ගය : </label>
                                <label class="col-md-5 "  name="cMemberShipNo" id="cMemberShipNo"></label>
                            </div>
                            <div class="form-group">
                                <label class="col-md-7  text-right" >කාරණය : </label>
                                <label class="col-md-5 " name="cNICNo"  id="cNICNo"></label>
                            </div>
                            <div class="form-group">
                                <label class="col-md-7  text-right" >පා.ලි. අංකය : </label>
                                <label class="col-md-5 " name="cUseName"  id="cUseName"></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="col-md-7  text-right">සාමාජික අංකය : </label>
                                <label class="col-md-5 " name="cCIFNo" id="cCIFNo"></label>
                            </div>
                            <div class="form-group">
                                <label class="col-md-7  text-right" >ජැ.හැ. අංකය : </label>
                                <label class="col-md-5 "  name="cMemberShipNo" id="cMemberShipNo"></label>
                            </div>
                            <div class="form-group">
                                <label class="col-md-7  text-right" >දුරකතන අංකය : </label>
                                <label class="col-md-5 " name="cNICNo"  id="cNICNo"></label>
                            </div>
                            <div class="form-group">
                                <label class="col-md-7  text-right" >භාවිත නම : </label>
                                <label class="col-md-5 " name="cUseName"  id="cUseName"></label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body" style="height: 50px">
                    <div class="form-group">
                        <label class="col-md-2 text-right ">ලද දිනය :</label>
                        <div class="col-md-2 bg-pad">
                            <input style="height: 30px;" class="form-control  text-right box-field convertSinhalaIskolaPotha" placeholder="0.00" name="dDepositDate" id="dDepositDate" value="2018-02-26" type="date">
                        </div>
                        <label class="col-md-2 text-right ">බිල් අංකය :</label>
                        <div class="col-md-2">
                            <input style="height: 30px;" class="form-control  text-right box-field convertSinhalaIskolaPotha" placeholder="0.00" name="cReceiptNo" id="cReceiptNo" data="validate" data-type="number" type="text"> 
                        </div>
                        <label class="col-md-2 text-right ">භා. බිල් අංකය :</label>
                        <div class="col-md-2">
                            <input style="height: 30px;" class="form-control  text-right box-field convertSinhalaIskolaPotha" placeholder="0.00" name="cReceiptNo2" id="cReceiptNo2" data="validate" data-type="number" type="text">
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
                <div class="box-body" >
                    <label class="col-md-12 " style="color: #FF9233;">2018-02-26 දිනට</label>
                    <div class="row">
                        <div class="form-group">
                            <label class="control-label col-md-6  ">ලිපි ගාස්තු :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field convertSinhalaIskolaPotha" placeholder="0.00" name="nPaidStationary" id="nPaidStationary" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">තැපැල් ගාස්තු :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field convertSinhalaIskolaPotha" placeholder="0.00" name="nPaidPostage" id="nPaidPostage" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">නඩු ගාස්තු :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" name="nPaidCaurtFees" id="nPaidCaurtFees" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">තීරක ගාස්තු :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" name="nPaidArbitrationFees" id="nPaidArbitrationFees" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">දිනට පොළිය :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" name="nPaidIntValue" id="nPaidIntValue" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">දිනට දඩ පොළිය :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" name="nPaidPenaltyValue" id="nPaidPenaltyValue" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">ඉ.ගෙ හිඟ පොළිය :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  " style="padding-top: 3px;">0.00</label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">ඉ.ගෙ දඩ පොළිය :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  " style="padding-top: 3px;">0.00</label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  ">දිනට හිඟ වාරික :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  "></label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" name="nPaidCapitalVal" id="nPaidCapitalVal" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <div class="col-md-12">
                                <div class="col-md-12" style="background-color: #044687;height: 2px;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group" >
                            <label class="control-label col-md-6  " style="font-weight:bold;">ගෙවිය යුතු අවම මුදල :</label>
                            <label class="control-label col-md-1  "></label>
                            <label class="control-label col-md-1  " style="padding-top: 3px;">0.00</label>
                            <div class="col-md-4">
                                <input class="form-control  text-right box-field" placeholder="0.00" data="validate" data-type="decimal" type="text">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
        <div class="col-md-6" style="height: 100%">
            <div class="box box-primary">
                <div class="box-body">
                    <div class="row">
                        <div class="row">
                            <label class="col-md-4  text-right  control-label">නිකුත් කළ මුදල :</label>
                            <label class="col-md-3  text-left control-label " data="validate" data-type="decimal"></label>
                            <label class="col-md-3  text-right control-label ">ඉතිරිය :</label>
                            <label class="col-md-2  text-left control-label " data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">පොළී අනුපාතය :</label>
                            <label class="col-md-3  text-left control-label"></label>
                            <label class="col-md-3  text-right control-label">වාරිකය මුදල :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">අයවී ඇති මුදල :</label>
                            <label class="col-md-3  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-3  text-right control-label">වාරික :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">අයවිය යුතු මුදල :</label>
                            <label class="col-md-3  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-3  text-right control-label">වාරික :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">අයවී ඇති පොළිය :</label>
                            <label class="col-md-3  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-3  text-right control-label" style="padding-left: 0px">අයවිය යුතු පොළිය :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">ගෙවීමට ඇති මුදල :</label>
                            <label class="col-md-3  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-3  text-right control-label">වාරික :</label>
                            <label class="col-md-2  text-left control-label"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">අවසාන වාරික දිනය :</label>
                            <label class="col-md-3  text-left control-label"></label>
                            <label class="col-md-3  text-right control-label">පොළී දිනය :</label>
                            <label class="col-md-2  text-left control-label"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">හිඟ වාරික මුදල :</label>
                            <label class="col-md-3  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-3  text-right control-label">වාරික :</label>
                            <label class="col-md-2  text-left control-label"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">පොළිය :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label" data="validate" data-type="decimal">හිඟ පොළිය :</label>
                            <label class="col-md-2  text-left control-label"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label">දඩ පොළි මුදල :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label">දඩ පොළී :</label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                        <div class="row">
                            <label class="col-md-4  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                            <label class="col-md-1  text-right control-label"></label>
                            <label class="col-md-3  text-right control-label"></label>
                            <label class="col-md-2  text-left control-label" data="validate" data-type="decimal"></label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body" style="height: 50px">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="radio">
                                <label class="" style="font-weight: bold;color: red" onclick="labelShowed('d')">
                                    <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="" name="optionsRadios" id="money" value="option1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                    මුදලින්
                                </label>
                                <label class="" id="depAccountLabel" style="font-weight: bold;color: red" onclick="labelShowed('s')" hidden="">
                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="" name="optionsRadios" id="depAccount" value="option1" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                    තැන්පත් ගිණුමකින්
                                </label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="col-md-4  text-right" style="font-size: 14px">මුදල :</label>
                                <div class="col-md-8">
                                    <input class="form-control text-right" placeholder="0.00" name="nPaymentVal" id="nPaymentVal" style="font-size: 14px" data="validate" data-type="decimal" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="col-md-12 text-right  " style="font-size: 12px;" id="cFullNameDep" hidden="">( <font style="color: green"></font> )</label>
                                <label class="col-md-12 text-right  " style="font-size: 12px;" id="cDepName" hidden=""></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-sm btn-primary ">ගණුදෙණුව සිදුකරන්න</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div> 
        </div>
    </div>
</div>
</section>