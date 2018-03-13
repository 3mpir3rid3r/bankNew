<%-- 
    Document   : indastri
    Created on : Mar 2, 2018, 11:25:18 AM
    Author     : mmh
--%>

<%@page import="com.nbs.worker.Server"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<section id="asd" class="content">
    <div class="row">
        <form action="index.jsp" class="form-horizontal">
            <div class="col-md-9">
                <div class="box box-info bg-color bg-top">                                
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-sm-5  ">ආයතන අංකය :</label>
                                    <div class="col-sm-7">
                                        <div class="input-group">
                                            <input class="form-control input-sm" value="000000" disabled="" type="text">
                                            <span class="input-group-btn">
                                                <button class="btn btn-info btn-flat btn-sm" type="button" onclick="companyNumBtnAction()"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5  ">ආයතනයේ නම :</label>
                                    <div class="col-md-7">
                                        <input data="validate" data-type="letterS" class="form-control input-sm convertSinhalaIskolaPotha" required="" name="cFullName" id="cFullName"  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5 ">ආයතනයේ ස්භාවය :</label>
                                    <div class="col-md-7">
                                        <select class="form-control input-sm convertSinhalaIskolaPotha" name="cCompanyNature" id="cCompanyNature" required="" style="border-bottom-color: '';">
                                            <%
                                            List in = new ArrayList();
                                            in.add(2);

                                            List out1=null;

                                            List searchMultipleResults = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 3);

                                            if (searchMultipleResults != null) {

                                                for (int i = 0; i < searchMultipleResults.size(); i++) {

                                                    out1 = (List) searchMultipleResults.get(i);

                                                    System.out.println("lllllllllllllllll   " + out1.get(1).toString());
                                        %>
                                        <option value="<%= out1.get(0).toString()%>"><label class="control-label"><%= out1.get(1).toString()%></label></option>
                                        <%
                                                }

                                            }
                                        %>
                                            

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5 ">ලියාපදිංචි අංකය :</label>
                                    <div class="col-md-7">
                                        <input data="validate" data-type="number" class="form-control input-sm convertSinhalaIskolaPotha" name="nRegisteredNo" id="nRegisteredNo" required=""  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5 ">ලියාපදින්චි දිනය :</label>
                                    <div class="col-md-7">
                                        <input class="form-control input-sm convertSinhalaIskolaPotha" required="" name="dRegisteredDate" id="dRegisteredDate"  type="date">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5  ">වරිපනම් අංකය :</label>
                                    <div class="col-md-7">
                                        <input data="validate" data-type="number" class="form-control input-sm convertSinhalaIskolaPotha" name="nVat" id="nVat" required=""  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5  ">ප්‍රධානියාගේ නම :</label>
                                    <div class="col-md-7">
                                        <input data="validate" data-type="letterS" class="form-control input-sm convertSinhalaIskolaPotha" name="cMasterName" id="cMasterName" value="" type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-5  ">ජ : හැ : අංකය:</label>
                                    <div class="col-md-7">
                                        <input data="validate" data-type="birthday" class="form-control input-sm convertSinhalaIskolaPotha" id="nNicNo" name="nNicNo" required=""  data-toggle="popover" title="" data-content="B'day is.." maxlength="12" data-original-title="BirthDay Calculator" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">                                            
                                <div class="form-group">
                                    <label class="control-label col-sm-4  ">ස්ථීර ලිපිනය 1 :</label>
                                    <div class="col-md-8">
                                        <input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine1" id="cPAddLine1" required="" data="validate" data-type="address" data-line="line-1"  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4  ">ස්ථීර ලිපිනය 2 :</label>
                                    <div class="col-md-8">
                                        <input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine2" id="cPAddLine2" required="" data="validate" data-type="address" data-line="line-2"  disabled="disabled" type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4  ">ස්ථීර ලිපිනය 3 :</label>
                                    <div class="col-md-8">
                                        <input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine3" id="cPAddLine3" required="" data="validate" data-type="address" data-line="line-3"  disabled="disabled" type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4  ">ස්ථීර ලිපිනය 4 :</label>
                                    <div class="col-md-8">
                                        <input class="form-control input-sm convertSinhalaIskolaPotha" id="cPAddLine4" name="cPAddLine4" required="" data="validate" data-type="address" data-line="line-4"  disabled="disabled" type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4  ">දුරකථන අංකය 1 :</label>
                                    <div class="col-md-8">
                                        <input data="validate" data-type="number" class="form-control input-sm convertSinhalaIskolaPotha" id="cPTelNo1" name="cPTelNo1" required="" maxlength="10"  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4  ">දුරකථන අංකය 2 :</label>
                                    <div class="col-md-8">
                                        <input data="validate" data-type="number" class="form-control input-sm convertSinhalaIskolaPotha" name="cBTelNo1" id="cBTelNo1" required="" maxlength="10"  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4 ">ෆැක්ස් අංකය :</label>
                                    <div class="col-md-8">
                                        <input data="validate" data-type="number" class="form-control input-sm convertSinhalaIskolaPotha" name="cBTelNo1" id="cBTelNo1" required="" maxlength="10"  type="text">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: -10px;">
                                    <label class="control-label col-sm-4  ">ඊ-මේල් :</label>
                                    <div class="col-md-8">
                                        <input class="form-control input-sm convertSinhalaIskolaPotha" name="cEmail" id="cEmail" required=""  type="email">
                                    </div>
                                </div> 
                            </div>
                        </div>                                
                    </div>
                    <div class="box-footer">
                        <fieldset>

                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input value="0" name="cus" type="hidden">
                                    <input value="2" name="type" type="hidden">
                                    <input class="btn btn-primary" id="" value="ස්ථිර කරන්න" type="submit">
                                    <input class="btn btn-info" id="" value="නැවත සැකසීම" type="reset">
                                    <input class="btn btn-danger" id="" value="ඉවත් වන්න" type="button">
                                </div>
                            </div>                                

                        </fieldset>
                    </div>
                </div>
            </div>   
        </form>
        <div class="col-md-3">
            <div class="box box-info bg-color bg-top">
                <div class="box-header"><h5 class="box-title">abc</h5></div>
                <div class="box-body">

                </div>
            </div>
        </div>
    </div>
</section>