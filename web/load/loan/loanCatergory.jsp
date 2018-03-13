<%-- 
    Document   : loanCatergory
    Created on : Mar 6, 2018, 11:37:52 AM
    Author     : mmh
--%>

<%@page import="com.nbs.worker.Server"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@include file="../common/commonLedger.jsp"%>

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

<script type="text/javascript">

    function selectBtnAction(loanCatID) {
        alert("iddddd   " + loanCatID);

    }

    var xml;
    
    function h(){
                if(window.ActiveXObject){
                    xml=new ActiveXObject("Microsoft.xml");
                }else if(window.XMLHttpRequest){
                    xml=new XMLHttpRequest();
                    alert("o99888");
                }
    }
    
    function selectBtnAction(id){
        h();
        xml.onreadystatechange=handle;
        xml.open("POST","NewDepDopositTypesServlet",true);
        xml.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xml.send("type=2&ID="+id);
    }
    
    function handle(){
        if(xml.readyState===4 && xml.status===200){
            var json = JSON.parse(xml.responseText);
            alert(json["name"]);
        }
    }
    
    function storeData(id) {
        if (id === 1) {
            alert("uuudfdfdereruuuuuuuu   " + id);
            window.location.href("common/commonLedger.jsp");
            alert("u2222   " + id);
        }
    }


</script>

<section class="content-header"> 
    <h1>
        ණය වර්ගයන්ගේ ආකෘති
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.jsp"><i class="fa fa-home"></i> Saving</a></li>
        <li class="active"><a href="#">ණය වර්ගයන්ගේ ආකෘති</a></li>
    </ol>
</section>

<section class="content">
    <div class="row bg-top" style="height:auto">
        <form class="form-horizontal" action="" method="" id="loanForm">

            <div class="col-md-12"> 
                <!--./Tab Section-->
                <ul class="nav nav-tabs" id="myTab">
                    <li id="secA" class="active"><a id="tabA" data-toggle="tab" href="#sectionA"><b>සාරාංශ දැක්ම</b></a></li>
                    <li id="secB">
                        <a id="tabB" data-toggle="tab" href="#sectionB"><b>විස්තරාත්මක දැක්ම</b>
                        </a>
                    </li>
                </ul>
                <!--./Tab Section-->
                <!--./Tab Content-->
                <div class="tab-content">
                    <!--/.section A-->
                    <div id="sectionA" class="tab-pane fade in active">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title"> ණය වර්ගයන්ගේ සාරාංශය </h3>
                            </div>
                            <div class="box-body">
                                <table id="table" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>අංකය</th>
                                            <th>ණය කේතය</th>
                                            <th>ණය නම</th>
                                            <th>ණය නම(සිංහල)</th>
                                            <th>ණය වර්ගය</th>
                                            <th>පොළිය</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%                                            List in = new ArrayList();

                                            List out1 = null;

                                            List searchMultipleResults = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_Lon_LoanTypes", 7);

                                            if (searchMultipleResults != null) {

                                                for (int i = 0; i < searchMultipleResults.size(); i++) {
                                                    out1 = (List) searchMultipleResults.get(i);

                                        %>

                                        <tr>
                                            <td><%= out1.get(0).toString()%></td>
                                            <td><%= out1.get(1).toString()%></td>
                                            <td><%= out1.get(2).toString()%></td>
                                            <td class="convertSinhalaAmali"><%= out1.get(3).toString()%></td>
                                            <td><%= out1.get(4).toString()%></td>
                                            <td><%= out1.get(5).toString()%></td>
                                            <td><button type="button" onclick="selectBtnAction(<%= out1.get(0).toString()%>)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>


                                        <%

                                                }
                                            }


                                        %>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                    <div id="sectionB" class="tab-pane fade">
                        <!--<div id="sectionB" class="tab-pane fade active in">-->
                        <div class="panel panel-default" style="margin-bottom: 10px">
                            <div class="panel-heading">
                                <h6 class="panel-title">
                                    මුලික තොරතුරු
                                </h6>
                            </div>
                            
                            <div class="panel-body" style="background-color: #e7f0f7;">
                                <div class="list-group col-lg-12" id="fontSize" style="padding: 0px">
                                    <!--<form class="form-horizontal">-->
                                    <div class="form-group" style="margin-top:-10px">
                                        <label class="control-label col-sm-3 input-sm">කේතය :</label>
                                        <div class="col-md-3">
                                            <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="කේතය" style="font-size:15px;" maxlength="3" name="cSysCode" id="cSysCode" value="" type="text" data="validate" data-type="number">
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:-10px">
                                        <label class="control-label col-sm-3 input-sm">ණය වර්ගය :</label>
                                        <div class="col-sm-3">
                                            <select class="form-control my-input input-sm" name="nLonCatID" id="nLonCatID">
                                                <option value="0">-තෝරන්න-</option>
                                                <%                                                    in.clear();
                                                    in.add(11);
                                                    out1.clear();

                                                    List loanCat = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);

                                                    if (loanCat != null) {

                                                        for (int i = 0; i < loanCat.size(); i++) {
                                                            out1 = (List) loanCat.get(i);

                                                %>
                                                <option value="<%= out1.get(0).toString()%>" class="convertSinhalaAmali"><%= out1.get(1).toString()%></option>
                                                <% }
                                                    }%>

                                            </select>     
                                        </div>
                                        <input value="0" name="storeCheckbox" id="storeCheckbox" type="hidden">
                                        <div class="checkbox col-sm-3" name="bActive" id="bActive">

                                            <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input id="checkBox1" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> ක්‍රියාකාරී ගිණුම් වර්ග

                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:-10px">
                                        <label class="control-label col-sm-3 input-sm">ණය නම :</label>
                                        <div class="col-md-6">
                                            <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="ණය නම" maxlength="65" name="cLonName" id="cLonName" value="" type="text" data="validate" data-type="letterS">
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:-10px">
                                        <label class="control-label col-sm-3 input-sm">ණය නම(සිංහල) :</label>
                                        <div class="col-md-6">
                                            <input class="form-control input-sm convertSinhalaAmali" placeholder="ණය නම^සිංහල&amp;" maxlength="65" name="cLonNameSin" id="cLonNameSin" value="" onkeyup="keyup1(event, 'cLonNameSin')" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:-10px">
                                        <label class="control-label col-sm-3 input-sm">ණය නම(දෙමළ) :</label>
                                        <div class="col-md-6">
                                            <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="ණය නම(දෙමළ)" maxlength="65" name="cLonNameTamil" id="cLonNameTamil" value="" type="text">
                                        </div>
                                    </div>
                                    <!--</form>-->
                                </div>
                                <div class="list-group col-lg-12" id="fontSize" style="padding: 0px;margin-top:-25px">
                                    <div class="box-group" id="accordion">
                                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                        <div class="panel box box-info bg-bottom bg-panelcolor">
                                            <div class="box-header b-header">
                                                <h4 class="box-title b-header logo " style="padding: 5px 10px 10px 10px;font-size: 18px">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="">
                                                        මුලීක ලක්ෂණ
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="false">
                                                <div class="box-body bg-color">
                                                    <div class="row">
                                                        <div class="col-md-12 bg-top" style="padding: 5px;margin-bottom: -10px">
                                                            <div class="panel-group" id="account">
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading" style="height:30px">
                                                                        <h5 class="panel-title" style="font-size:15px">
                                                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseAccount">
                                                                                <b>ගිණුම් ආරම්බ කිරීමේ උපදෙස්</b>
                                                                            </a>
                                                                        </h5>
                                                                    </div>
                                                                    <div id="collapseAccount" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="form-group bg-top">
                                                                                <div class="col-sm-3 " style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                හිමිකම
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color:  #e7f0f7;">
                                                                                            <div class="form-group" style="margin-top:-10px">
                                                                                                <label class="control-label col-sm-7 input-sm">අවම හවුල්කරයන් :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input class="form-control input-sm convertSinhalaIskolaPotha" name="nMinParticipant" id="nMinParticipant" value="0" min="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-10px;margin-bottom: -12px">
                                                                                                <label class="control-label col-sm-7 input-sm">උපරිම හවුල්කරයන් :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input class="form-control input-sm convertSinhalaIskolaPotha" name="nMaxParticipant" id="nMaxParticipant" value="0" min="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3" style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                වයස සීමාවන්
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color: #e7f0f7;">
                                                                                            <div class="form-group" style="margin-top:-10px;">
                                                                                                <label class="control-label col-sm-7 input-sm">අවම වයස් සීමා(වර්ෂ) :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" name="nMinAge" id="nMinAge" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-10px;margin-bottom: -12px">
                                                                                                <label class="control-label col-sm-7 input-sm">උපරිම වයස් සීමා(වර්ෂ) :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" name="nMaxAge" id="nMaxAge" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3" style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                ණය මුදල
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color: #e7f0f7;">
                                                                                            <div class="form-group" style="margin-top:-10px;">
                                                                                                <label class="control-label col-sm-7 input-sm">අවම ණය මුදල :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" name="nMinLonAmt" id="nMinLonAmt" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-10px;margin-bottom: -12px">
                                                                                                <label class="control-label col-sm-7 input-sm">උපරිම ණය මුදල :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" name="nMaxLonAmt" id="nMaxLonAmt" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3" style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                ණය වාර ගණන
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color: #e7f0f7;">
                                                                                            <div class="form-group" style="margin-top:-10px;">
                                                                                                <label class="control-label col-sm-7 input-sm">අවම ණය වාර ගණන :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" name="nMinMonths" id="nMinMonths" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-10px;margin-bottom: -12px">
                                                                                                <label class="control-label col-sm-7 input-sm">උපරිම ණය වාර ගණන :</label>
                                                                                                <div class="col-md-5">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" name="nMaxMonths" id="nMaxMonths" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group" style=" margin-bottom: -10px;margin-top: -15px">
                                                                                <div class="checkbox col-sm-12" style="text-align: center">

                                                                                    <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="bMultipleAcct" id="bMultipleAcct"  type="checkbox">එක් ගනුදෙනු කරුවෙකුට ගිනුම් කිහිපයක් අරම්භ කිරිමට අවසර දිම</div> 

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>  
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="btn btn-info btn-sm collapsed" aria-expanded="false">
                                                            Next
                                                        </a>
                                                    </div>  
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel box box-info bg-bottom bg-panelcolor">
                                            <div class="box-header b-header">
                                                <h4 class="box-title b-header logo" style="padding: 5px 10px 10px 10px;font-size: 18px">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                                                        පොදු ලෙජර සම්බන්ධතාව 
                                                    </a>
                                                </h4>
                                            </div>

                                            <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false">
                                                <div class="box-body bg-color">
                                                    <div class="row">
                                                        <div class="col-md-12 bg-top" style="padding: 5px;margin-bottom: -10px">
                                                            <div class="panel-group" id="account">
                                                                <div class="panel panel-default">
                                                                    <div id="collapseInterest" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="form-group bg-top" style="margin-bottom: -10px">
                                                                                <div class="col-sm-8" style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                පොළී ගණනය කිරිමේ ආකාර
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color:  #e7f0f7;">
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-4 input-sm text-right">පොළී අනුපාතය : </label>
                                                                                                <div class="col-md-3">
                                                                                                    <input min="0" onclick="getValue1(2)" class="form-control input-sm convertSinhalaIskolaPotha" name="nCurrentInt" id="nCurrentInt" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                                <label class="col-sm-5 input-sm">% P.A </label>
                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-10px;margin-bottom: -15px">
                                                                                                <label class="control-label col-sm-4 input-sm text-right">පොළී ගණනය සෑම : </label>
                                                                                                <div class="col-md-8">

                                                                                                    <select class="form-control my-input input-sm" name="nLonInterestMethodID" id="nLonInterestMethodID">
                                                                                                        <option value="0">-තෝරන්න-</option>
                                                                                                        <%
                                                                                                            in.clear();
                                                                                                            in.add(12);
                                                                                                            out1.clear();

                                                                                                            List interestMethod = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);

                                                                                                            if (interestMethod != null) {

                                                                                                                for (int i = 0; i < interestMethod.size(); i++) {
                                                                                                                    out1 = (List) interestMethod.get(i);

                                                                                                        %>
                                                                                                        <option value="<%= out1.get(0).toString()%>" class="convertSinhalaIskolaPotha"><%= out1.get(1).toString()%></option>
                                                                                                        <% }
                                                                                                            }%>

                                                                                                    </select>

                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                දඩ පොළිය ගණනය කිරිමේ ආකාර
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color:  #e7f0f7;">
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-4 input-sm text-right">දඩ පොළී අනුපතය : </label>
                                                                                                <div class="col-md-2">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" style="font-size: 15px" name="nPenaltyIntRate" id="nPenaltyIntRate" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                                <label class="col-sm-1 input-sm">% Per </label>
                                                                                                <div class="col-md-5">
                                                                                                    <select class="form-control my-input input-sm" name="nPIntRateForID" id="nPIntRateForID">
                                                                                                        <option value="0">-තෝරන්න-</option>
                                                                                                        <%
                                                                                                            in.clear();
                                                                                                            in.add(13);
                                                                                                            out1.clear();

                                                                                                            List pIntRate = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);

                                                                                                            if (pIntRate != null) {

                                                                                                                for (int i = 0; i < pIntRate.size(); i++) {
                                                                                                                    out1 = (List) pIntRate.get(i);

                                                                                                        %>
                                                                                                        <option value="<%= out1.get(0).toString()%>" class="convertSinhalaIskolaPotha"><%= out1.get(1).toString()%></option>
                                                                                                        <% }
                                                                                                            }%>

                                                                                                    </select>

                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-10px;">
                                                                                                <label class="control-label col-sm-4 input-sm text-right">ගණනය කිරීම : </label>
                                                                                                <div class="col-md-2">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" style="font-size: 15px" name="nPenaltyIntCal" id="nPenaltyIntCal" value="0" type="number" data="validate" data-type="number">
                                                                                                </div>
                                                                                                <label class="col-sm-1 input-sm"></label>
                                                                                                <div class="col-md-4">
                                                                                                    <select class="form-control my-input input-sm" name="nPIntCalForID" id="nPIntCalForID">
                                                                                                        <option value="0">-තෝරන්න-</option>
                                                                                                        <%
                                                                                                            in.clear();
                                                                                                            in.add(14);
                                                                                                            out1.clear();

                                                                                                            List pIntCal = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);

                                                                                                            if (pIntCal != null) {

                                                                                                                for (int i = 0; i < pIntCal.size(); i++) {
                                                                                                                    out1 = (List) pIntCal.get(i);

                                                                                                        %>
                                                                                                        <option value="<%= out1.get(0).toString()%>" class="convertSinhalaIskolaPotha"><%= out1.get(1).toString()%></option>
                                                                                                        <% }
                                                                                                            }%>

                                                                                                    </select>

                                                                                                </div>
                                                                                                <label class="col-sm-1 input-sm">S </label>
                                                                                            </div>
                                                                                            <div class="col-md-12" style="margin-top:-15px;margin-bottom: -15px">
                                                                                                <input name="intRadio" id="intRadio" type="hidden">
                                                                                                <div class="col-md-6">


                                                                                                    <div class="radio">
                                                                                                        <label class="col-md-12 input-sm">
                                                                                                            <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm " onclick="getValue1(1)" name="nPenaltyIntOP1" id="nPenaltyIntOP11" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                            සියලු දිනයන්ට පොළී ගණනය
                                                                                                        </label>
                                                                                                    </div>
                                                                                                    <div class="radio">
                                                                                                        <label class="col-md-12 input-sm">
                                                                                                            <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue1(2)" name="nPenaltyIntOP1" id="nPenaltyIntOP12" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                            වැඩි වු දිනයන්ට පොළී ගණනය
                                                                                                        </label>
                                                                                                    </div>

                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <div class="checkbox">
                                                                                                        <label class="col-md-12 input-sm" style="color: #005f8d">කල් පිරේන දිනය නිවාඩු දිනයක් නම්</label>
                                                                                                        <!--<center>-->
                                                                                                        <label class="col-md-12 input-sm">

                                                                                                            <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nPenaltyIntOP2" id="nPenaltyIntOP2" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>

                                                                                                            නිවාඩු දිනයන් හැර
                                                                                                        </label>
                                                                                                        <!--</center>-->
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-4" style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title" style="font-size:15px">
                                                                                                ආකාර
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" style="background-color: #e7f0f7;">
                                                                                            <input name="intRadio1" id="intRadio1" type="hidden">
                                                                                            <div class="col-md-12" style="margin-top:-10px;">


                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue3(1)" name="nIntCalMethodID" id="nIntCalMethodID1" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        පොළිය නැත
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue3(2)" name="nIntCalMethodID" id="nIntCalMethodID2" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        හීනවන ශේෂ මත 
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue3(3)" name="nIntCalMethodID" id="nIntCalMethodID3" value="3" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        හීනවන ශේෂය සමවාරික
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue3(4)" name="nIntCalMethodID" id="nIntCalMethodID4" value="4" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        නියත පොළියකට
                                                                                                    </label>
                                                                                                </div>

                                                                                            </div>
                                                                                            <div class="form-group" style="margin-top:-7px;margin-bottom: -7px">
                                                                                                <input name="roundRadio" id="roundRadio" type="hidden">
                                                                                                <label class="col-sm-12 input-sm" style="color: #005f8d">පොළිය වැටයීම</label>
                                                                                            </div>

                                                                                            <div class="col-md-12" style="margin-top:-10px;margin-bottom: 0px">
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onchange="getValue2(1)" onclick="getValue2(1)" name="nLonIntRoundID" id="nLonIntRoundID1" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        වැටයීම්  නැත
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onchange="getValue2(1)" onclick="getValue2(2)" name="nLonIntRoundID" id="nLonIntRoundID2" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        පොදු වැටයීම් 
                                                                                                    </label>
                                                                                                </div> 
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue2(3)" name="nLonIntRoundID" id="nLonIntRoundID3" value="3" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        වැඩි අගයකට 10.20--&gt;11.00
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label class="col-md-12 input-sm">
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" onclick="getValue2(4)" name="nLonIntRoundID" id="nLonIntRoundID4" value="4" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        අඩු අගයකට 10.66--&gt;11.00
                                                                                                    </label>
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
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6  bg-top">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-warning btn-sm" aria-expanded="false">
                                                                Back 
                                                            </a>
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="btn btn-info btn-sm" aria-expanded="false">
                                                                Next
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel box box-info bg-bottom bg-panelcolor">
                                            <div class="box-header b-header">
                                                <h4 class="box-title b-header logo" style="padding: 5px 10px 10px 10px;font-size: 18px">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">
                                                        වරකට පොළිය
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false">
                                                <div class="box-body bg-color">
                                                    <div class="row">
                                                        <div class="col-md-12 bg-top" style="padding: 5px;margin-bottom: -10px">
                                                            <div class="panel-group" id="account">
                                                                <div class="panel panel-default">
                                                                    <div id="collapseInterest" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="form-group bg-top" style="margin-bottom: -10px">
                                                                                <div class="col-sm-12 " style="padding:0px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-body" style="background-color:  #e7f0f7;padding:0px">
                                                                                            <div class="col-md-12" style="padding: 0px">
                                                                                                <table class="table table-bordered" style="margin-bottom: -9px">
                                                                                                    <tbody>
                                                                                                        <tr style="background-color: #00c0ef">
                                                                                                            <th class="text-center" width="200px">ගිණුම් කේතය</th>
                                                                                                            <th class="text-center">විස්තරය</th>
                                                                                                            <th class="text-center" width="210px">%</th>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                                <div class="zTreeDemoBackground left">
                                                                                                    <ul id="treeDemo" class="ztree" style="width: auto;height:300px;">
                                                                                                        <table class="table table-bordered">
                                                                                                            <tbody>
                                                                                                                <tr>
                                                                                                                    <td width="190px"></td>
                                                                                                                    <td></td>
                                                                                                                    <td width="190px"></td>
                                                                                                                </tr>
                                                                                                            </tbody>
                                                                                                        </table>
                                                                                                    </ul>
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
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6  bg-top">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="btn btn-warning btn-sm" aria-expanded="false">
                                                                Back 
                                                            </a>
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="btn btn-info btn-sm" aria-expanded="false">
                                                                Next
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel box box-info bg-bottom bg-panelcolor">
                                            <div class="box-header b-header">

                                                <h4 class="box-title b-header logo" style="padding: 5px 10px 10px 10px;font-size: 18px">
                                                    <a id="autoClick2Nd" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed" aria-expanded="true">
                                                        ලෙජරයන්
                                                    </a>
                                                </h4>

                                            </div>
                                            <div id="collapseFour" class="panel-collapse collapse" aria-expanded="true">
                                                <div class="box-body bg-color">
                                                    <div class="row">
                                                        <div class="col-md-12 bg-top" style="padding: 5px;margin-bottom: -10px">
                                                            <div class="panel-group" id="account">
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading" style="height:30px">
                                                                        <h5 class="panel-title" style="font-size:15px">
                                                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseInterest">
                                                                                <b>ලෙජර සම්බන්ධතා</b>
                                                                            </a>
                                                                        </h5>
                                                                    </div>
                                                                    <div id="collapseInterest" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="form-group bg-top" style="margin-bottom: -10px">
                                                                                <div class="col-sm-12 " style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-body" style="background-color:  #e7f0f7;">
                                                                                            <!--<center>-->
                                                                                            <div class="form-group" style="margin-top:-10px">
                                                                                                <label class="control-label col-sm-4 input-sm"></label>
                                                                                                <label class="col-sm-8 input-sm text-left">ලෙජර සම්බන්ධතා</label>
                                                                                            </div>
                                                                                            <div class="col-lg-12">

                                                                                                <div class="col-md-12">

                                                                                                    <div class="form-group bg-top" style="margin-top:-10px;">
                                                                                                        <label class="control-label col-sm-2 input-sm">මුල් මුදලේ</label>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num1_1" value="null" type="hidden">
                                                                                                            <input name="num1" id="num1" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc1" id="desc1" value="" class="form-control input-sm text-right convertSinhalaAmali" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" data-toggle="modal" data-target="#myModal">.........</button>
                                                                                                        </div>




                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm1" id="numm1" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <label class="control-label col-sm-2 input-sm">පොළීයේ</label>
                                                                                                        <input name="num1_2" value="null" type="hidden">
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num2" id="num2" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc2" id="desc2" value="" class="form-control input-sm text-right convertSinhalaAmali" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(2);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm2" id="numm2" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <label class="control-label col-sm-2 input-sm">තැපැල් ගාස්තු</label>
                                                                                                        <input name="num1_3" value="null" type="hidden">
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num3" id="num3" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc3" id="desc3" value="" class="form-control input-sm text-right convertSinhalaAmali" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(3);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm3" id="numm3" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <label class="control-label col-sm-2 input-sm">ලිපි ගාස්තු</label>
                                                                                                        <input name="num1_4" value="null" type="hidden">
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num4" id="num4" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc4" id="desc4" value="" class="form-control input-sm text-right convertSinhalaAmali" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(4);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm4" id="numm4" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <input name="num1_5" value="null" type="hidden">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <label class="control-label col-sm-2 input-sm">වෙන්දේසි</label>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num5" id="num5" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc5" id="desc5" value="" class="form-control input-sm text-right convertSinhalaAmali" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(5);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm5" id="numm5" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <input name="num1_6" value="null" type="hidden">
                                                                                                        <label class="control-label col-sm-2 input-sm">පොළී සහනය</label>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num6" id="num6" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc6" id="desc6" class="form-control input-sm text-right convertSinhalaAmali" value="" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(6);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm6" id="numm6" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <input name="num1_7" value="null" type="hidden">
                                                                                                        <label class="control-label col-sm-2 input-sm">තීරක ගාස්තු</label>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num7" id="num7" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc7" id="desc7" class="form-control input-sm text-right convertSinhalaAmali" value="" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(7);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm7" id="numm7" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <input name="num1_8" value="null" type="hidden">
                                                                                                        <label class="control-label col-sm-2 input-sm">නඩු ගාස්තු</label>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num8" id="num8" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc8" id="desc8" class="form-control input-sm text-right convertSinhalaAmali" value="" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(8);" class="btn btn-default btn-sm">.........</button>

                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm8" id="numm8" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="form-group bg-top">
                                                                                                        <input name="num1_9" value="null" type="hidden">
                                                                                                        <label class="control-label col-sm-2 input-sm">දඩ පොළී</label>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="num9" id="num9" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-5">
                                                                                                            <input name="desc9" id="desc9" class="form-control input-sm text-right convertSinhalaAmali" value="" type="text">
                                                                                                        </div>
                                                                                                        <div class="col-md-1">
                                                                                                            <button type="button" onclick="storeData(9);" class="btn btn-default btn-sm">.........</button>
                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <input name="numm9" id="numm9" class="form-control input-sm text-right convertSinhalaIskolaPotha" value="0" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <!--</center>-->
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
                                                    <div class="row">
                                                        <div class="col-md-6  bg-top">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="btn btn-warning btn-sm" aria-expanded="false">
                                                                Back 
                                                            </a>
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-info btn-sm" aria-expanded="false">
                                                                Start
                                                            </a>
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




                </div>
                <!--./Tab Content-->
            </div>
            <div class="col-md-12">
                <div class="panel panel-default" >
                    <div class="panel-footer">
                        <button type="button" class="btn btn-warning btn-sm">Report</button>
                        <div class="pull-right">
                            <button type="button" class="btn btn-primary btn-sm" onclick="newBtnAction()">New</button>
                            <button type="submit" class="btn btn-success btn-sm" id="subnitBtn">Save</button>
                            <button type="button" class="btn btn-danger btn-sm">Close</button>
                        </div>
                    </div>
                </div>
            </div> 
            <input value="0" name="nDepTypeID" id="nDepTypeID" type="hidden">                                                                                               
        </form>

        <script src="js/validate.js" type="text/javascript"></script>

    </div>
    <script src="bower_components/datatables.net/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="bower_components/fastclick/lib/fastclick.js" type="text/javascript"></script>
    <script>

                                var frm = $('#loanForm');
                                frm.submit(function (e) {
                                    e.preventDefault();
                                    $.ajax({
                                        type: 'post',
                                        url: 'NewDepDopositTypesServlet?type=1',
                                        data: frm.serialize(),
                                        success: function (data) {
                                            alert(data);
                                        },
                                        error: function (data) {
                                            alert(data);
                                        },
                                    });
                                });


                                $(function () {
                                    $('#table').DataTable();
                                })
    </script>
</section>