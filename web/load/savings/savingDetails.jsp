<%-- 
    Document   : monySaving
    Created on : Feb 23, 2018, 7:02:14 PM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .box{
        margin-bottom: 0;
    }
    .row{
        padding-top: 5px;
    }
    .box-header:hover{
        cursor: pointer;
        background-color: #99ccff;
    }
    .box-title>a{
        color: inherit;
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
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-5">  
                            <div class="form-group">
                                <form action="view_customers.jsp?tellerIndexKey=custCIFID" method="post" name="accForm">
                                    <label class="col-md-4 control-label" id="accNumLabel" name="accNumLabel"><h4><strong id="name">පා.ලි අංකය</strong></h4></label>
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <input class="form-control text-right" style="font-size: larger;font-weight: bold" autocomplete="off" placeholder="පා.ලි අංකය" maxlength="9" name="accountNumber" id="accountNumber" value="" onkeyup="changeAccountNumber();" type="text">
                                            <span class="input-group-btn">
                                                <button class="btn btn-info btn-flat" type="submit"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12 " >
                                <div class="row">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label  text-center" name="cFullName" id="cFullName"><h4 style="font-style: italic;color: blue;font-size: 12px">--------------------සම්පූර්ණ නම--------------------</h4></label>
                                        <label for="inputEmail3" class="col-md-12 control-label  text-center " name="cPAddLine1" id="cPAddLine1"><h4 style="font-style: italic;color: blue;font-size: 12px">----------ලිපිනය----------</h4></label>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right">පා.ලි. අංකය : </label>
                                        <label class="col-md-6 " name="cCIFNo" id="cCIFNo"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right">සාමාජික අංකය : </label>
                                        <label class="col-md-6 "  name="cMemberShipNo" id="cMemberShipNo">සාමාජික අංකය</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right"> ජැ.හැ. අංකය : </label>
                                        <label class="col-md-6 " name="cNICNo"  id="cNICNo"> ජැ.හැ. අංකය</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right" >භාවිත නම : </label>
                                        <label class="col-md-6 " name="cUseName"  id="cUseName">භාවිත නම</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">

                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-md-12">
            <div class="box-group " id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-primary">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" >
                        <h4 class="box-title">
                            <strong>
                                තැම්පත් විස්තර
                            </strong>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="true" style="">
                        <div class="box-body ">
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="row">
                                        <div class="col-md-8 ">
                                            <div class="panel panel-default">
                                                <div class="panel-body " >
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group ">
                                                                <label class="col-md-4  text-right" >ගිණුමේ නම :</label>
                                                                <div class="col-md-8">

                                                                    <select required="" class="form-control  convertSinhalaIskolaPotha" id="nDepTypeID" name="nDepTypeID" onchange="onChangeAccType()" >
                                                                        <option value="0">-තෝරන්න-</option>

                                                                        <option value="1">100-MEMBER SAVINGS</option>

                                                                        <option value="2">101-NON MEMBER SAVINGS</option>

                                                                        <option value="3">102-SCHOOL</option>

                                                                        <option value="4">103-RU-BANK PLUS</option>

                                                                        <option value="5">104-DANAYOJANA</option>

                                                                        <option value="6">105-MEMBER SAVINGS - INACTIVE</option>

                                                                        <option value="7">106-SUREKUM</option>

                                                                        <option value="8">107-SAMURDI</option>

                                                                        <option value="9">108-SOCIEATY</option>

                                                                        <option value="10">109-MIYAGIYA ACCOUNTS</option>

                                                                        <option value="11">110-BALA WAYAS</option>

                                                                        <option value="12">111-DUPUTHU</option>

                                                                        <option value="14">112-LADARU</option>

                                                                        <option value="15">113-RAN THILINA</option>

                                                                        <option value="16">114-RANTHILINA FIX DIPOSITS</option>

                                                                        <option value="17">115-NON MEMBER SAVINGS - INACTIVE</option>

                                                                        <option value="18">116-FIX DIPOSITES</option>

                                                                        <option value="19">117-OFFCIAL ACCOUNT - (AYA LABEEMATA)</option>

                                                                        <option value="20">118-YOUN WASANA SAVINGS</option>

                                                                        <option value="21">119-YOUN WASANA FIXED DEPOSITS</option>

                                                                        <option value="22">120-DUPUTHU-3800</option>

                                                                        <option value="23">121-RANLIYA SUPER LADY</option>

                                                                        <option value="24">122-KANTHA</option>

                                                                        <option value="25">123-NEW YEAR FIX DIPOSITES</option>

                                                                        <option value="26">11-12</option>

                                                                        <option value="27">11-12</option>

                                                                        <option value="28">11-11</option>

                                                                        <option value="29">-asd</option>

                                                                        <option value="30">111-111</option>

                                                                        <option value="31">1-1</option>

                                                                        <option value="32">999-dfdd</option>

                                                                        <option value="33">qqq-dddddddddddd</option>

                                                                        <option value="34">dfd-sdf</option>

                                                                        <option value="35">334-aaaa</option>

                                                                        <option value="36">445-eeeeeeeb yyyy</option>

                                                                        <option value="37">343-ttt888888</option>

                                                                        <option value="38">232-ttt</option>

                                                                        <option value="39">233-ddddd</option>

                                                                        <option value="40">344-ggggg</option>

                                                                        <option value="41">334-wwwwrrr</option>

                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group ">
                                                                <label class="col-md-4  text-right" >ගිණුමේ වර්ගය :</label>
                                                                <div class="col-md-8">
                                                                    <input required="" class="form-control  convertSinhalaIskolaPotha" id="cDepName" name="cDepName" value="" placeholder="ගිණුමේ වර්ගය"  type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-5" >
                                                            <div class="form-group">
                                                                <label class="">
                                                                    <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red" checked="true" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                    තනි පුද්ගල
                                                                </label>
                                                                <label class="">
                                                                    <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                    හවුල්
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-7">
                                                            <div class="form-group" >
                                                                <label class="col-md-6  text-right" >අරම්භක දිනය :</label>
                                                                <div class="col-md-6">
                                                                    <input class="form-control  convertSinhalaIskolaPotha" id="dStartDate" name="dStartDate" value="" type="date">
                                                                </div>
                                                            </div>
                                                        </div>    
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="panel panel-default">
                                                <div class="panel-body " >
                                                    <div class="row">
                                                        <div class="form-group ">
                                                            <label class="col-md-12" >ගිණුම් අංකය :</label>
                                                            <div class="col-md-12">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="cOurAccountNo" name="cOurAccountNo" value="" placeholder="ගිණුම් අංකය"  data="validate" data-type="number" type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="form-group ">
                                                            <label class="col-md-12" >අනු අංකය :</label>
                                                            <div class="col-md-12">
                                                                <input data="validate" data-type="number" required="" class="form-control  convertSinhalaIskolaPotha" id="cSerialNo" name="cSerialNo" value="" placeholder="0"  type="number">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="col-md-12 ">
                                        <div class="panel panel-default">
                                            <div class="panel-body " >
                                                <div class="row">
                                                    <div class="form-group ">
                                                        <label class="col-md-12" >පොළී අනුපාතය :</label>
                                                        <div class="col-md-12">
                                                            <input data="validate" data-type="decimal" required="" class="form-control  convertSinhalaIskolaPotha" id="nEffectiveInt" name="nEffectiveInt" value="" placeholder="පොළී අනුපාතය"  type="text">
                                                        </div>
                                                    </div>                                               
                                                </div>        
                                                <div class="row">
                                                    <div class="form-group ">
                                                        <label class="col-md-12" >ලෙජර් අංකය :</label>
                                                        <div class="col-md-12">
                                                            <input data="validate" data-type="number" required="" class="form-control  convertSinhalaIskolaPotha" id="nLedgerBookNo" name="nLedgerBookNo" value="" placeholder="0"  min="0" type="number">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <a id="nextBtn1" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="btn btn-info btn-sm  collapsed" aria-expanded="false" onclick="depDetailNextBtnAction()">
                                    Next  
                                </a>
                                <button type="submit" id="saveBtn1" class="btn btn-success btn-sm " onclick="saveBtnAction(1)">
                                    Save  
                                </button>
                            </div>  
                        </div>
                    </div>
                </div>
                <div class="panel box box-primary bg-bottom bg-panelcolor">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <strong>
                                ස්ථිර හා සහතික තැම්පත්
                            </strong>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false">
                        <div class="box-body ">
                            <div class="row">
                                <div class="col-md-4 ">
                                    <div class="panel panel-default ">
                                        <div class="panel-heading">
                                            ස්ථිර/සහතික තැම්පත්
                                        </div>
                                        <div class="panel-body " >
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6 " >මූලික තැම්පත් මුදල :</label>
                                                    <div class="col-sm-6">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" id="nFDIntialiDeposit" name="nFDIntialiDeposit" value="" placeholder="0.00"  type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6 " >පොළී අනුපතය :</label>
                                                    <div class="col-md-6">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" value="" placeholder="0.0"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4 " >කාලසීමාව :</label>
                                                    <div class="col-sm-3">
                                                        <input data="validate" data-type="number" class="form-control  text-left convertSinhalaIskolaPotha" id="nFDPeriod" name="nFDPeriod" value="" placeholder="0"  min="0" type="number">
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <select class="form-control  convertSinhalaIskolaPotha" id="nFDPeriodTypeID" name="nFDPeriodTypeID" >
                                                            <option value="0">-තෝරන්න-</option>
                                                            <option value="1">දින</option>
                                                            <option value="2">සති</option>
                                                            <option value="3">මාස</option>
                                                            <option value="4">වර්ෂ</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6  " >කල්පිරීමේ දිනය :</label>
                                                    <div class="col-md-6">
                                                        <input class="form-control  text-center convertSinhalaIskolaPotha" id="dFDMaturityDate" name="dFDMaturityDate" value=""  type="date">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6 " >කලපිරුනු පසු මුදල :</label>
                                                    <div class="col-md-6">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" id="nFDMaturityValue" name="nFDMaturityValue" value="" placeholder="0.00"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6 " >ගිවිසුම් අංකය :</label>
                                                    <div class="col-md-6">
                                                        <input data="validate" data-type="number" class="form-control  text-left convertSinhalaIskolaPotha" id="cFDAgreementNo" name="cFDAgreementNo" value="" placeholder="0"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 ">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            ස්ථිර/සහතික තැම්පත් වැසිමේ ආකාරයන්
                                        </div>
                                        <div class="panel-body " >
                                            <div class="form-group">
                                                <label class="">
                                                    <div class="iradio_flat-green " style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red" checked="true"  style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                    ආපසු ගැනීම
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label class="">
                                                    <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red"  style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                    වෙනත් ගිණුමකට මරු කිරිම
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label class="">
                                                    <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red"  style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                    පොළිය සමඟ ඉදිරියට
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label class="">
                                                    <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="r3" class="flat-red"  style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                    පොළිය රහිත ඉදිරියට
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label class="">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-md-4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            පොළී ගණනය
                                        </div>
                                        <div class="panel-body ">
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6  " >පොළී ක්‍රමය :</label>
                                                    <div class="col-md-6">
                                                        <select class="form-control  convertSinhalaIskolaPotha" id="nFDIntCalMethodID" name="nFDIntCalMethodID" >
                                                            <option value="0">-තෝරන්න-</option>
                                                            <option value="1">දින</option>
                                                            <option value="2">සති</option>
                                                            <option value="3">මාස</option>
                                                            <option value="4">වර්ෂ</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6 " >වාර :</label>
                                                    <div class="col-md-6">
                                                        <input data="validate" data-type="number" class="form-control  text-left convertSinhalaIskolaPotha" id="nFDIntCalMethodValue" name="nFDIntCalMethodValue" value="" placeholder="0"  min="0" type="number">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6  " >බැර ක්‍රමය :</label>
                                                    <div class="col-md-6">
                                                        <select class="form-control " id="nFDIntCRMethodID" name="nFDIntCRMethodID" >
                                                            <option value="0">-තෝරන්න-</option>
                                                            <option value="1">දින</option>
                                                            <option value="2">සති</option>
                                                            <option value="3">මාස</option>
                                                            <option value="4">වර්ෂ</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-6 " >වාර :</label>
                                                    <div class="col-md-6">
                                                        <input data="validate" data-type="number" class="form-control  text-left convertSinhalaIskolaPotha" id="nFDIntCRMethodValue" name="nFDIntCRMethodValue" value="" placeholder="0"  min="0" type="number">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-12">
                                                    <label>
                                                        <div class="icheckbox_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="flat-red" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                        පොළී මුදල බැරවන ගිණුම
                                                    </label>
                                                    <div class="input-group">
                                                        <input class="form-control text-right convertSinhalaIskolaPotha"  placeholder="ගිණුම් අංකය" maxlength="20" name="nIntCRnDepMFID" id="nIntCRnDepMFID" value="" type="text">
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-info btn-flat btn-sm" type="button" onclick="searchTargetAccount()"><i class="fa fa-search"></i></button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col-md-6  ">
                                    <a id="backBtn1" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-warning btn-sm" aria-expanded="true">
                                        Back 
                                    </a>
                                    <a id="nextBtn2" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="btn btn-info btn-sm collapsed" aria-expanded="false" onclick="depFixCertificetBtnAction()">
                                        Next
                                    </a>
                                    <button id="saveBtn2" type="submit" class="btn btn-success btn-sm" onclick="saveBtnAction(2)">
                                        Save  
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-primary bg-bottom bg-panelcolor">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <strong >
                                ගිණුම් පාලනය
                            </strong>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false">
                        <div class="box-body ">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="panel panel-default">
                                        <div class="panel-body " >
                                            <div class="form-group">
                                                <label class="">
                                                    <div class="icheckbox_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><div class="icheckbox_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="flat-red" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                    මුදල් රැඳවීම
                                                </label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4">රැඳවු මුදල :</label>
                                                    <div class="col-md-8">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" name="nHoldedAmount" id="nHoldedAmount" value="" placeholder="0.00"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4">ආරම්භක දිනය :</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control  text-center convertSinhalaIskolaPotha" name="dHoldFromDate" id="dHoldFromDate" value=""  type="date">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4 ">අවසාන දිනය :</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control  text-center convertSinhalaIskolaPotha" name="dHoldToDate" id="dHoldToDate" value=""  type="date">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="">
                                                    <div class="icheckbox_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><div class="icheckbox_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="flat-red" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                    පොළී රැඳවීම
                                                </label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4">රැඳවු මුදල :</label>
                                                    <div class="col-md-8">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right" name="nHoldedAmountInt" id="nHoldedAmountInt" value="" placeholder="0.00"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4">ආරම්භක දිනය :</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control  text-center convertSinhalaIskolaPotha" name="dIntHoldFromDate" id="dIntHoldFromDate" value=""  type="date">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-4 ">අවසාන දිනය :</label>
                                                    <div class="col-md-8    ">
                                                        <input class="form-control  text-center convertSinhalaIskolaPotha" name="dIntHoldToDate" id="dIntHoldToDate" value=""  type="date">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="panel panel-default">
                                        <div class="panel-body " >
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5">ගිණුම් අංකය :</label>
                                                    <div class="col-md-7">
                                                        <div class="input-group">
                                                            <input class="form-control  text-right convertSinhalaIskolaPotha"  placeholder="ගිණුම් අංකය" maxlength="20" name="nInstDRnDepMFID" id="nInstDRnDepMFID" value="" type="text">
                                                            <span class="input-group-btn">
                                                                <button class="btn btn-info btn-flat btn-sm" type="button" onclick="searchTargetAccount1()"><i class="fa fa-search"></i></button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5 ">හරවන මුදල :</label>
                                                    <div class="col-md-7">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" name="nInstDRValue" id="nInstDRValue" value="" placeholder="0.00"  type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5">පවත්නා ශේෂය :</label>
                                                    <div class="col-md-7">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" placeholder="0.00"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5 ">බැර නොවු ශේෂය :</label>
                                                    <div class="col-md-7">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" placeholder="0.00"  type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5">බැර නොවු පොළීය :</label>
                                                    <div class="col-md-7">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" placeholder="0.00"  maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5 ">ඉදිරියට ඇති මාස ගණන :</label>
                                                    <div class="col-md-7">
                                                        <input data="validate" data-type="number" class="form-control  text-left convertSinhalaIskolaPotha" name="nTDDepositPeriod" id="nTDDepositPeriod" value="" placeholder="0"  type="number">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5">ගිවිසුම් ගත තැම්පත් මුදල :</label>
                                                    <div class="col-md-7">
                                                        <input data="validate" data-type="decimal" class="form-control  text-right convertSinhalaIskolaPotha" name="nTDAgreedAmount" id="nTDAgreedAmount" value="" placeholder="0.00"  type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-sm-5 ">ගෙවීම සෑම දින :</label>
                                                    <div class="col-md-5"> 
                                                        <input data="validate" data-type="number" class="form-control  text-left convertSinhalaIskolaPotha" name="nTDPaymentDay" id="nTDPaymentDay" value="" placeholder="0"  type="number">
                                                    </div>
                                                    <label class="col-md-2 ">වරක්</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6  ">
                                    <a id="backBtn2" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="btn btn-warning btn-sm collapsed" aria-expanded="false">
                                        Back 
                                    </a>
                                    <a id="nextBtn3" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="btn btn-info btn-sm collapsed" aria-expanded="false">
                                        Next
                                    </a>
                                    <button id="saveBtn3" type="submit" class="btn btn-success btn-sm" onclick="saveBtnAction(3)">
                                        Save  
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-primary bg-bottom bg-panelcolor">
                    <div class="box-header"  data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <strong>
                                හිමිකරුවන්ගේ විස්තර
                            </strong>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" aria-expanded="false">
                        <div class="box-body ">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-body " >
                                            <div class="pull-right ">
                                                <a href="view_customers.jsp?tellerIndexKey=sDInputCust" class="btn btn-success btn-sm" style="font-size: 14px;">
                                                    ගණුදෙනු කරුවන් ඇතුලත් කිරීම
                                                </a>
                                                <a href="../StoreSavingDetailDataServlet?removeCust=true" class="btn btn-success btn-sm" style="font-size: 14px;">
                                                    ගණුදෙනු කරුවන් ඉවත් කිරීම
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 ">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr style="background-color: #93bace">
                                                <th class="text-center" width="200px">පා.ලි අංකය</th>
                                                <th class="text-center" width="250px">නම</th>
                                                <th class="text-center" width="10px">සම්බන්ධය</th>
                                                <th class="text-center">අත්සන</th>
                                                <th class="text-center" width="200px">වෙනත් තොරතුරු</th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="zTreeDemoBackground left">
                                        <ul id="treeDemo" class="ztree" style="width: auto;height:130px;">
                                            <table class="table table-bordered table-hover">
                                                <tbody id="depositBody">

                                                </tbody>
                                            </table>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="row ">
                                <br>
                                <div class="col-md-6">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="btn btn-warning btn-sm collapsed" aria-expanded="false">
                                        Back 
                                    </a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="btn btn-info btn-sm collapsed" aria-expanded="false">
                                        Next
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-primary bg-bottom bg-panelcolor">
                    <div class="box-header"  data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <strong>
                                ප්‍රතිලාබ ලබන්නන් 
                            </strong>
                        </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse" aria-expanded="false">
                        <div class="box-body ">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-body " >
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-md-2 ">බැර නොවූ පොලි :</label>
                                                    <div class="col-md-3">
                                                        <input data="validate" data-type="decimal" class="convertSinhalaIskolaPotha form-control  text-right" placeholder="0.0" style="font-size:large;" maxlength="25" type="text">
                                                    </div>
                                                    <label class="control-label col-md-2 ">බැර නොවූ පොලි :</label>
                                                    <div class="col-md-5">
                                                        <input data="validate" data-type="decimal" class=" convertSinhalaIskolaPotha form-control  text-right" placeholder="0.0" style="font-size:large;" maxlength="25" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group ">
                                                    <label class="control-label col-md-2  ">ගණුදෙණු දිනය :</label>
                                                    <div class="col-md-3">
                                                        <input class=" convertSinhalaIskolaPotha form-control  text-center" placeholder="dd/mm/yyyy" style="font-size:large;" type="text">
                                                    </div>
                                                    <label class="control-label col-md-2  ">ගණුදෙණු දිනය :</label>
                                                    <div class="col-md-3">
                                                        <input class="convertSinhalaIskolaPotha form-control  text-center" placeholder="dd/mm/yyyy" style="font-size:large;" type="text">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="pull-right">
                                                            <button type="submit" class="btn btn-primary btn-sm">New</button>
                                                            <button type="submit" class="btn btn-primary btn-sm">Save</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 ">
                                    <div class="panel panel-default">
                                        <div class="panel-body ">
                                            <table class="table table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <th>අංකය</th>
                                                        <th>දිනය</th>
                                                        <th>ගනුදෙනු වර්ගය</th>
                                                        <th>හර</th>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>   
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6  ">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="btn btn-warning btn-sm collapsed" aria-expanded="false">
                                        Back 
                                    </a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" class="btn btn-info btn-sm collapsed" aria-expanded="false">
                                        Next
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-primary bg-bottom bg-panelcolor">
                    <div class="box-header"  data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <strong>
                                ලිපි ලයිස්තුව
                            </strong>
                        </h4>
                    </div>
                    <div id="collapseSeven" class="panel-collapse collapse" aria-expanded="false">
                        <div class="box-body ">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-body " >
                                            <div class="pull-right ">
                                                <button type="submit" class="btn btn-primary btn-sm">ගනුදෙනු කරුවන් ඇතුල් කිරීම</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 ">
                                    <div class="panel panel-default">
                                        <div class="panel-body ">
                                            <table class="table table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <th>අංකය</th>
                                                        <th>දිනය</th>
                                                        <th>ගනුදෙනු වර්ගය</th>
                                                        <th>හර</th>
                                                        <th>බැර</th>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6  ">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="btn btn-warning btn-sm collapsed" aria-expanded="false">
                                        Back 
                                    </a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-info btn-sm" aria-expanded="true">
                                        Next
                                    </a>
                                    <input class="btn btn-success btn-sm" aria-expanded="false" value="Submit" type="submit">
                                </div>
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
</section>
