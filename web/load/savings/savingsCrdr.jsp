<%-- 
    Document   : savingsCrdr
    Created on : Mar 1, 2018, 10:39:40 AM
    Author     : Elijah-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
                <div class="box-body bg-mainheight">
                    <div class="panel panel-default bg-color">
                        <div class="panel-heading">
                            මූලික තොරතුරු - ඉතුරුම් ගිණුම බැර
                        </div>
                        <form class="form-horizontal bg-top" method="get" action="../SaveSavingsCreditorServlet" onsubmit="create(this);
                                return false;">
                            <input type="hidden" value="121" id="index" name="index">
                            <div class="panel-body" style="margin-bottom: 0px;height: 500px;">
                                <div class="form-group">
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">අංශය  :</label>
                                    <div class="col-md-4">
                                        <input type="text" name="branch" class="form-control input-sm convertSinhalaAmali" value="m%Odk ld¾hd,fha nexl= wxYh" disabled="">                                                                                    
                                    </div>
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">ගනුදෙනු අංකය :</label>
                                    <div class="col-md-4">
                                        <input type="text" disabled="" class="form-control input-sm">                                                                             
                                    </div>
                                </div>
                                <div class="form-group bg-top">
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">හර ගිණුම :</label>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <input type="hidden" value="0" id="act4" name="act4">
                                            <input type="text" class="form-control input-sm" value="" id="cDescription" name="cDescription">
                                            <span class="input-group-addon input-sm"><a href="#" class="btn-block" onclick="goCrDr('1')">Search</a></span>
                                        </div>                                                                                
                                    </div>
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">ලදුපත් අංකය  :</label>
                                    <div class="col-md-4">
                                        <input type="text" name="cReceiptNo" id="cReceiptNo" class="form-control input-sm" value="">                                                                                                                                                             
                                    </div>
                                </div>
                                <div class="form-group bg-top">
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">ගණුදෙණු දිනය :</label>
                                    <div class="col-md-2">
                                        <input type="date" name="dTrnDate" id="dTrnDate" class="form-control input-sm" value="">                                                                             
                                    </div>
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">චෙක්පත් අංකය :</label>
                                    <div class="col-md-2">
                                        <input type="text" name="cChequeNo" id="cChequeNo" class="form-control input-sm" value="">                                                                             
                                    </div>
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">චෙක්පත් දිනය  :</label>
                                    <div class="col-md-2">
                                        <input type="date" name="dChequeDate" id="dChequeDate" class="form-control input-sm" value="">                                                                                                                                                             
                                    </div>
                                </div>
                                <div class="form-group bg-top">
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px">ගනුදෙනුකරුගේ නම :</label>
                                    <div class="col-md-10">
                                        <!--<div class="input-group">-->
                                        <input type="text" class="form-control input-sm" value="" id="cCustomerName" name="cCustomerName">
                                        <!--<span class="input-group-addon input-sm"><a class="btn-block" href="#" onclick="goCrDr('3')">Search</a></span>-->
                                        <!--</div>-->                                                                                
                                    </div>                                                    
                                </div>
                                <div class="form-group bg-top">
                                    <label class="col-sm-2 input-sm text-right" style="font-size: 13px"> සටහන  :</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control input-sm" name="cRemarks" id="cRemarks"></textarea>
                                    </div>                                                    
                                </div>
                                <h4 class="bg-success text-center">බැර ගිණුම් විස්තර </h4>

                                <div class="col-md-12">
                                    <div class="form-group" style="margin-bottom: 40px;">
                                        <input type="hidden" value="0" id="pkOfAcc4Id" name="pkOfAcc4Id">                                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <input type="text" class="form-control input-sm" value="" id="acc">
                                                <span class="input-group-addon input-sm"><a class="btn-block" href="#" onclick="goCrDr('2')" onkeypress="searchText(this, 's')">Search</a></span>
                                            </div>                                                     
                                        </div>                                                     
                                        <div class="col-md-4">
                                            <input type="text" class="form-control input-sm" value="" id="sub">
                                        </div>                                                    
                                        <div class="col-md-3">
                                            <input type="text" class="form-control input-sm" placeholder="0.00" id="bera">
                                        </div>                                                    
                                        <div class="col-md-1">
                                            <input type="button" class="btn btn-primary btn-sm" value="add" onclick="addRow('T')">
                                        </div>                                                    
                                    </div>
                                    <div class="zTreeDemoBackground left" style="margin-top: -30px;">
                                        <ul id="treeDemo" class="ztree" style="width: auto;height:200px;">
                                            <table class="table table-bordered table-hover" id="T">
                                                <tbody>
                                                    <tr>
                                                        <td width="10px"></td>
                                                        <th>ID</th>
                                                        <th>ගිණුම් කේතය</th>
                                                        <th>විස්තරය </th>
                                                        <th>බැර </th>
                                                    </tr> 

                                                </tbody>
                                            </table>
                                        </ul>
                                    </div> 
                                    <!--<input type="button" class="btn btn-danger btn-sm pull-right" value="Delete Row" onclick="deleteRow('T')" style="margin-top: 10px;">-->
                                </div>
                            </div>
                            <div class="panel-footer" style="height: 50px;">                                            
                                <div class="pull-right">
                                    <!--                                                    <input type="hidden" name="get1" id="get1">
                                                                                        <input type="hidden" name="get2" id="get2">
                                                                                        <input type="hidden" name="get3" id="get3">
                                                                                        <input type="hidden" name="get4" id="get4">-->


                                    <button type="button" class="btn btn-info btn-sm">New</button>
                                    <button type="submit" class="btn btn-success btn-sm">Save</button>
                                    <button type="reset" class="btn btn-warning btn-sm ">Change</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>