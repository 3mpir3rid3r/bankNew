<%-- 
    Document   : customer
    Created on : Feb 23, 2018, 3:23:53 PM
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
        පාරිභෝගික තොරතුරු 
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Advanced Elements</li>
    </ol>
</section>
<section class="content">
    <form action="../NewCustomerServlet" method="post">
        <div class="row">
            <div class="col-md-9" >
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="row">
                            <div class="form-group">
                                <label class="col-md-2 input-sm text-right">සාමාජික අංකය :</label>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input type="text" class="form-control input-sm" disabled="" name="cifno" id="cifno" value="00000000">
                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-flat btn-sm" type="button" onclick="cMIFBtnAction()"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <label class="col-md-2 input-sm text-right">සාමාජික තත්වය :</label>
                                <div class="col-md-4">
                                    <select required class="form-control input-sm convertSinhalaIskolaPotha" name="nCustomerCategoryID" id="nCustomerCategoryID" onchange="this.style.borderColor = ''">
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <option class="" value="1"><label class="control-label">MEMBER</label></option>
                                        <option class="" value="2"><label class="control-label">ASSOCIATE MEMBER</label></option>
                                        <option class="" value="3"><label class="control-label">NON MEMBER</label></option>
                                    </select>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="form-group">
                                <label class="col-md-2 input-sm text-right">භාවිතා වන නම :</label>
                                <div class="col-md-2">
                                    <select required class="form-control input-sm convertSinhalaIskolaPotha" name="nTitleID" id="nTitleID" onchange="this.style.borderColor = ''">
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <option class="" value="1"><label class="control-label">Mr</label></option>
                                    </select>
                                </div>                                                        
                                <div class="col-md-8">
                                    <input required type="text" class="form-control input-sm convertSinhalaIskolaPotha" name="cUseName" id="cUseName" value="" onclick="this.style.borderColor = ''" data="validate" data-type="letterS">
                                </div>
                            </div>  
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-2 input-sm text-right">සම්පූර්ණ නම :</label>
                                <div class="col-md-10">
                                    <input required type="text" class="form-control input-sm convertSinhalaIskolaPotha" name="cFullName" id="cFullName" value="" onclick="this.style.borderColor = ''"  data="validate" data-type="letterS">
                                </div> 
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-2 input-sm text-right">සම්පූර්ණ නම(සි) :</label>
                                <div class="col-md-10">
                                    <input required type="text" class="form-control input-sm convertSinhalaAmali" name="cFullNameSin" id="cFullNameSin" value="" onclick="this.style.borderColor = ''" onkeyup="keyup1(event, 'cFullNameSin')" data="validate" data-type="letterSS">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-2 input-sm text-right">මුලකුරු :</label>
                                <div class="col-md-2">
                                    <input readonly  type="text" class="form-control input-sm bg-pad convertSinhalaIskolaPotha" name="cInitials" id="cInitials" value="" onclick="this.style.borderColor = ''">
                                </div>
                                <label class="col-md-2 input-sm text-right">අවසාන නම :</label>
                                <div class="col-md-3">
                                    <input readonly type="text" class="form-control input-sm convertSinhalaIskolaPotha" name="cLastName" id="cLastName" value="" onclick="this.style.borderColor = ''">
                                </div>
                                <div class="col-md-3" style="margin-top: -5px">
                                    <label class="radio-inline"><input type="radio" value="1" name="bFeMale" id="female" > ස්ත්‍රී</label>
                                    <label class="radio-inline"><input type="radio" value="0" name="bFeMale" id="male"> පුරුෂ</label>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box box-primary">
                    <div class="box-body" >
                        <div class="row">
                            <center>
                                <img id="userImage" class="img-thumbnail" src="dist/img/avatar.png" style="width: 170px;height: 150px">
                            </center>
                        </div>
                        <div class="row" >
                            <div class="col-md-6">
                                <button class="btn btn-success btn-sm col-md-12" onclick="$('#myCam').modal('show')" type="button"><span class="fa fa-camera">Upload</span></button><hr style="">
                            </div>
                            <div class="col-md-6">
                                <input class="btn btn-success btn-sm col-md-12" onclick="alert(document.getElementById('canvas').value)" value="Sign" type="button">
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">ජා.හැ.අංකය :</label>
                                <div class="col-md-3" style="padding-right: 5px;">
                                    <input required="" class="form-control input-sm text-right convertSinhalaIskolaPotha" placeholder="000000000V" name="cNICNo" id="cNICNo" value="" data="validate" data-type="birthday"  data-toggle="popover" title="" data-content="B'day is.." maxlength="12" data-original-title="BirthDay Calculator" type="text">
                                </div>
                                <label class="col-md-2 input-sm text-right" style="padding-left: 5px;">උපන් දිනය :</label>
                                <div class="col-md-4">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" id="dDateOfBirth" name="dDateOfBirth" value="null" onclick="this.style.borderColor = ''"  type="date">
                                    <script>
                                        document.getElementById("dDateOfBirth").value = 'null';
                                    </script>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">නිකුත් කල දිනය :</label>
                                <div class="col-md-9">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="issueddate" id="dNICIssuedDate"  type="date">
                                    <script>
                                        document.getElementById("dNICIssuedDate").value = 'null';
                                    </script>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">විවාහ/අවිවාහක :</label>
                                <div class="col-md-9">
                                    <select required="" class="form-control input-sm convertSinhalaIskolaPotha" name="nCivilStatusID" id="nCivilStatusID" >
                                        <option value="0">-N/A-</option>
                                        <option class="" value="1">Single</option>
                                    </select>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">ජාතිය :</label>
                                <div class="col-md-9">
                                    <select required="" class="form-control input-sm convertSinhalaIskolaPotha" name="nNationalityID" id="nNationalityID" >
                                        <option value="0">-N/A-</option>
                                        <option class="" value="1">Sinhala</option>
                                    </select>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">ආගම :</label>
                                <div class="col-md-9">
                                    <select required="" class="form-control input-sm convertSinhalaIskolaPotha" name="nReligionID" id="nReligionID" >
                                        <option value="0">-N/A-</option>
                                        <option value="1">NA</option>
                                        <option value="2">BUDDHIST</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">අරම්භක දිනය :</label>
                                <div class="col-md-9">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="dJoineDate" id="dJoineDate" value="null"  type="date">
                                    <script>
                                        document.getElementById("dJoineDate").value = 'null';
                                    </script>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 input-sm text-right">මවගේ වාසගම :</label>
                                <div class="col-md-9">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cMotherMadName" id="cMotherMadName" value="" data="validate" data-type="letterS"  type="text">
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">ස්ථිර ලිපිනය</a></li>
                        <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">වෙනත් ලිපිනය</a></li>
                        <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">සාමාජික තොරතුරු</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <table>
                                <tbody>
                                    <tr>
                                        <td style="width: 175px"><label class="control-label input-sm">ලිපිනය 1</label></td>
                                        <td style="width: 650px"><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine1" id="cPAddLine1" value="" data="validate" data-type="address" data-line="line-1"  type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ලිපිනය 2</label></td>
                                        <td><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine2" id="cPAddLine2" value="" data="validate" data-type="address" data-line="line-2"  disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ලිපිනය 3</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine3" id="cPAddLine3" value="" data="validate" data-type="address" data-line="line-3" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ලිපිනය 4</label></td> 
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine4" id="cPAddLine4" value="" data="validate" data-type="address" data-line="line-4" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">දුරකථන අංකය </label></td>
                                        <td><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPTelNo1" id="cPTelNo1" value="" data="validate" data-type="number" maxlength="10"  type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ඊ මේල් </label></td>
                                        <td><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPEmail" id="cPEmail" value=""  type="email"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab_2">
                            <table>
                                <tbody>
                                    <tr>
                                        <td style="width: 175px"><label class="control-label input-sm">ලිපිනය 1</label></td>
                                        <td style="width: 650px"><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine1" id="cBAddLine1" value="" data="validate" data-type="address" data-line="line-1" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ලිපිනය 2</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine2" id="cBAddLine2" value="" data="validate" data-type="address" data-line="line-2" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ලිපිනය 3</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine3" id="cBAddLine3" value="" data="validate" data-type="address" data-line="line-3" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ලිපිනය 4</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine4" id="cBAddLine4" value="" data="validate" data-type="address" data-line="line-4" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">දුරකථන අංකය </label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBTelNo1" id="cBTelNo1" value="" data="validate" data-type="number" maxlength="10" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ඊ මේල් </label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBEmail" id="cBEmail" value="" type="email"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab_3">
                            <table>
                                <tbody>
                                    <tr>
                                        <td style="width: 175px"><label class="control-label input-sm">සාමාජික අංකය</label></td>
                                        <td style="width: 650px"><input class="form-control input-sm text-right convertSinhalaIskolaPotha" name="cMemberShipNo" id="cMemberShipNo" value="" data="validate" data-type="number" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">ප්‍රාදේශිකය</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha " name="nMemAreaID" id="nMemAreaID">
                                                <option value="0">-N/A-</option>
                                                <option class=" input-sm" value="1">DANKOTUWA</option>
                                            </select> 
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">කණ්ඩායමේ නම</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha" id="nMemAreaGroupID" name="nMemAreaGroupID">
                                                <option value="0">-N/A-</option>
                                                <option value="1">DANKOTUWA</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">තනතුර</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha" id="nMemStatusID" name="nMemStatusID">
                                                <option value="0">-N/A-</option>
                                                <option value="1">ACTIVE</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label input-sm">තත්වය</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha" id="nMemStatusID" name="nMemStatusID">
                                                <option value="0">-N/A-</option>
                                                <option value="1">ACTIVE</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="row">
                                                <label class="col-md-3 bg-top input-sm">සාමාජික දිනය</label>
                                                <div class="col-md-4 bg-top">
                                                    <input class="form-control input-sm convertSinhalaIskolaPotha" name="dMemberShipDate" id="dMemberShipDate" value="null" type="date">
                                                    <script>
                                                        document.getElementById("dMemberShipDate").value = 'null';
                                                    </script>
                                                </div>
                                                <label class="col-md-3 bg-top input-sm">සාමාජික මුදල  </label>
                                                <div class="col-md-2 bg-top">
                                                    <input class="form-control input-sm text-right convertSinhalaIskolaPotha" placeholder="0.00" name="nMemberShipFee" id="nMemberShipFee" value="0" data="validate" data-type="decimal" type="text">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6"></div>
            <div class="col-md-6 btn-group">
                <input type="submit" value="Submit" class="btn btn-success" style="width: 50%" />
                <input type="reset" value="Reset" class="btn btn-danger" style="width: 50%"/>
            </div>
        </div>
    </form>
</section>
