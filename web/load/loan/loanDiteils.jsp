<%-- 
    Document   : monySaving
    Created on : Feb 23, 2018, 7:02:14 PM
    Author     : mmh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.nbs.worker.Server"%>
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
    <%
        Server server = new Server();
        List<List<Object>> outPut = null;
        List<Object> outPutCustomer = null;
        ArrayList in = new ArrayList();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String nCustomerID = "0",
                cCIFNo1 = "පා.ලි. අංකය",
                cCIFNo = "",
                cFullName = "--------------------සම්පූර්ණ නම--------------------",
                cUseName = "භාවිත නම",
                cNICNo = "ජැ.හැ. අංකය",
                address = "----------ලිපිනය----------";
        if (request.getParameter("cCIFNo") != null) {

            in.add(request.getParameter("cCIFNo").toString());
            in.add("");
            outPutCustomer = server.searchSingleResult(in, "ssp_bnk_DisplayData_CustomerMaster", 46);

            if (outPutCustomer.size() != 0) {
                nCustomerID = outPutCustomer.get(0).toString();
                cCIFNo = outPutCustomer.get(4).toString();
                cCIFNo1 = cCIFNo;
                cFullName = outPutCustomer.get(7).toString();
                cUseName = outPutCustomer.get(10).toString();
                cNICNo = outPutCustomer.get(13).toString();
                address = outPutCustomer.get(21).toString();
                if (!(outPutCustomer.get(22).toString().trim().equals(""))) {
                    address += "," + outPutCustomer.get(22).toString();
                    if (!(outPutCustomer.get(23).toString().trim().equals(""))) {
                        address += "," + outPutCustomer.get(23).toString().trim();
                        if (!(outPutCustomer.get(24).toString().trim().equals(""))) {
                            address += "," + outPutCustomer.get(24).toString().trim();
                        }
                    }
                }
            } else {
    %>
    <script>
        $(document).ready(function () {
            swal("Cancelled", "Wrong CIF Number :(", "error");
        });
    </script>
    <%
            }
        }
    %>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-5">  
                            <div class="form-group">
                                <label class="col-md-4 control-label" id="accNumLabel" name="accNumLabel"><h4><strong id="name">පා.ලි අංකය</strong></h4></label>
                                <div class="col-md-8">
                                    <div class="input-group">
                                        <input type="hidden" name="nCustomerID" value="<%=nCustomerID%>" id="customerId">
                                        <input class="form-control text-right" style="font-size: larger;font-weight: bold" autocomplete="off" placeholder="පා.ලි අංකය" maxlength="9" name="cCIFNo" id="cCIFNo" value="<%=cCIFNo%>" type="text">
                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-flat" type="submit" data="load" data-load="load/teller/viewCustomer.jsp" data-param="type=loan"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 " >
                                <div class="row">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label  text-center" name="cFullName" id="cFullName"><h4 style="font-style: italic;color: blue;f"><%=cFullName%></h4></label>
                                        <label for="inputEmail3" class="col-md-12 control-label  text-center " name="cPAddLine1" id="cPAddLine1"><h4 style="font-style: italic;color: blue;"><%=address%></h4></label>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right">පා.ලි. අංකය : </label>
                                        <label class="col-md-6 " name="cCIFNo" id="cCIFNo"><%=cCIFNo1%></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right">සාමාජික අංකය : </label>
                                        <label class="col-md-6 "  name="cMemberShipNo" id="cMemberShipNo"><%=cCIFNo%></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right"> ජැ.හැ. අංකය : </label>
                                        <label class="col-md-6 " name="cNICNo"  id="cNICNo"><%=cNICNo%></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-md-6  text-right" >භාවිත නම : </label>
                                        <label class="col-md-6 " name="cUseName"  id="cUseName"><%=cUseName%></label>
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
            <div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-info bg-panel">
                    <form class="form-horizontal" action="insertLoanServlet" method="">
                        <input type="hidden" name="nCustomerID" value="<%=nCustomerID%>" id="customerId">
                        <input id="saveType1" name="saveType" value="1" type="hidden">
                        <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" >
                            <h5 class="box-title logo">
                                <a id="collapseOneT" class="">
                                    <span class="fa fa-pencil">  මුලික තොරතුරු </span>
                                </a>
                            </h5>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="true" style="">
                            <div class="box-body ">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        මූලික තොරතුරු 1
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="form-group">
                                                            <label class="col-sm-4  text-right" >ණය වර්ගය :</label>
                                                            <div class="col-md-8">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonTypeID" name="nLonTypeID" onchange="onChangeAccType()">
                                                                    <option value="0">-තෝරන්න-</option>

                                                                    <option value="1">208-SHORT TERM LOAN</option>

                                                                    <option value="2">211-MID TERM LOAN</option>

                                                                    <option value="3">203-LONG TERM LOAN</option>

                                                                    <option value="4">204-FIXED DEPOSIT LOAN</option>

                                                                    <option value="5">209-STAFF LOAN</option>

                                                                    <option value="6">200-WAYABADIRIYA</option>

                                                                    <option value="7">210-THREEWEEL LOAN</option>

                                                                    <option value="8">206-MOTORBIKE LOAN</option>

                                                                    <option value="9">205-OVER DUE LOAN</option>

                                                                    <option value="10">213-INACTIVE-SHORT TERM LOAN</option>

                                                                    <option value="11">202-INACTIVE-MID TERM LOAN</option>

                                                                    <option value="12">214-INACTIVE-LONG TERM LOAN</option>

                                                                    <option value="13">212-INACTIVE-VEHICLE</option>

                                                                    <option value="14">201-OTHER LOAN</option>

                                                                    <option value="15">207-INACTIVE-LONG WAYABADIRIYA</option>

                                                                    <option value="16">215-PAST DUE LOAN</option>

                                                                    <option value="17">216-EPF LOAN</option>

                                                                    <option value="18">217-INACTIVE-OTHER LOAN</option>

                                                                    <option value="19">218-THIRAKA PRADANA  01</option>

                                                                    <option value="20">219-THIRAKA THINDU 02</option>

                                                                    <option value="21">220-USAWI GATHA</option>

                                                                    <option value="22">221-JANADIRIYA NAYA</option>

                                                                    <option value="23">221-JANADIRIYA NAYA</option>

                                                                    <option value="24">221-JANADIRIYA NAYA</option>

                                                                </select>                                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ණය ස්වභාවය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" placeholder="ණය ස්වභාවය" id="cLoanName" name="cLoanName" value="" type="text">                                                                               
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >කාරණය :</label>
                                                            <div class="col-md-8">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonDescriptionID" name="nLonDescriptionID">
                                                                    <option value="0">-තෝරන්න-</option>

                                                                    <option value="1">NA</option>

                                                                    <option value="2">HOUSING </option>

                                                                    <option value="3">BUSINESS </option>

                                                                    <option value="4">SELF EMPLOYMENT</option>

                                                                    <option value="5">AGRICULTRURAL</option>

                                                                    <option value="6">EDUCATIONAL</option>

                                                                    <option value="7">FOREIGN EDUCATIONAL</option>

                                                                    <option value="8">HEALTH</option>

                                                                    <option value="9">CEREMONIAL</option>

                                                                    <option value="10">FOREIGN EMPLOYMENT</option>

                                                                    <option value="11">REDEEMING PAWNED ITEMS</option>

                                                                    <option value="12">PURCHASE OF PROPERTY</option>

                                                                    <option value="13">VEHICLE</option>

                                                                    <option value="14">INFARSTRUCTURE</option>

                                                                    <option value="15">OTHER</option>

                                                                    <option value="16">FESTIVAL</option>

                                                                    <option value="17">APPERAL INDUSTRIES</option>

                                                                    <option value="18">FOOD PRODUCTION AND PROCESSING</option>

                                                                    <option value="19">LEATHER PRODUCTIONS</option>

                                                                    <option value="20">HANDYCRAFT WORKS</option>

                                                                    <option value="21">TIMBER INDRUSTRIES</option>

                                                                    <option value="22">SERVICE SUPPLY</option>

                                                                    <option value="23">CEMENT BASED ITEAMS</option>

                                                                    <option value="24">ANIMAL HUSBANDRY</option>

                                                                    <option value="25">CONSUMER</option>

                                                                    <option value="26">INDUSTRIES SERVISE</option>

                                                                    <option value="27">EMPLOYE PROVIDED FOUND</option>

                                                                    <option value="28">LAND DEVOLOP</option>

                                                                    <option value="29">FIX DEPOSITES LONE</option>

                                                                    <option value="30">CITILINK PHONE</option>

                                                                    <option value="31">SHORT TERM LOAN</option>

                                                                    <option value="32">MID TERM LOAN</option>

                                                                    <option value="33">LONG TERM LOAN</option>

                                                                    <option value="34">COMMERCIAL</option>

                                                                </select>                                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ණය මූලාශ්‍රය :</label>
                                                            <div class="col-md-8">
                                                                <select required=""  class="form-control  convertSinhalaIskolaPotha" id="nLonFundSourceID" name="nLonFundSourceID">
                                                                    <option value="0">-තෝරන්න-</option>

                                                                    <option value="1">wone funds</option>

                                                                </select>                                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <div class="row">
                                                                <label class="col-sm-4 "></label>
                                                                <div class="col-md-8">
                                                                    <div class="row">
                                                                        <div class="radio">
                                                                            <label>
                                                                                <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input id="bJoint1" name="bJoint" value="0" class="control-label" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> තනි පුද්ගල 
                                                                            </label>
                                                                            <label>
                                                                                <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input id="bJoint2" name="bJoint" value="1" class="control-label" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> හවුල් 
                                                                            </label>                                                                             
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ණයෙහි තත්වය :</label>
                                                            <div class="col-md-8">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonStatusID" name="nLonStatusID">
                                                                    <option value="0">-තෝරන්න-</option>

                                                                    <option value="1">NOT APPROVED</option>

                                                                    <option value="2">APPROVED</option>

                                                                    <option value="3">ACTIVE</option>

                                                                    <option value="4">CLOSED</option>

                                                                </select>                                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ණය අංකය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="cLonAccountNo" name="cLonAccountNo" type="number">                                        
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ලෙජර අංකය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nLedgerBookNo" name="nLedgerBookNo" type="number">                                        
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >අනු අංකය :</label>
                                                            <div class="col-md-8">
                                                                <input required=""  data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="cSerialNo" name="cSerialNo" type="number">                                                                              
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >අයදුම් කල දිනය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dApplyedDate" name="dApplyedDate" type="date">                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >අනුමත කල දිනය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dApprovedDate" name="dApprovedDate" type="date">                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ඉල්ලුම් කල මුදල :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nApplyedAmount" name="nApplyedAmount" type="text">                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >අනුමත කල මුදල :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nApprovedAmount" name="nApprovedAmount" type="text">                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >රක්ෂණ මුදල :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nInsuredAmount" name="nInsuredAmount" type="text">                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >රඳවා ගන්නා මුදල :</label>
                                                            <div class="col-md-8">
                                                                <input required=""  data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nReservedAmount" name="nReservedAmount" type="text">                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >පොළී අනුපාතය :</label>
                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" placeholder="Amount" id="nEffectiveInt" name="nEffectiveInt" type="text">
                                                                    <span class="input-group-addon ">%</span>
                                                                </div>                                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-left" >දඩ පොළී අනුපාතය:</label>
                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" placeholder="Amount" id="nPanaltyInt" name="nPanaltyInt" type="text">
                                                                    <span class="input-group-addon ">%</span>
                                                                </div>                                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group "> 
                                                            <label class="col-sm-12 " >අධ්‍යක්ෂක මණ්ඩල තීරණ</label>
                                                        </div>
                                                        <div class="form-group "> 
                                                            <label class="col-sm-4  text-right" >අංකය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="cBoardApprovalNo" name="cBoardApprovalNo" type="text">     
                                                            </div>
                                                        </div>
                                                        <div class="form-group "> 
                                                            <label class="col-sm-4  text-right" >දිනය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dBoardApprovalDate" name="dBoardApprovalDate" type="date">     
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <a id="nextBtn1" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed btn btn-info btn-sm" aria-expanded="false" disabled="">Next</a>
                                                        <button id="saveBtn1" type="submit" class="btn btn-success btn-sm">
                                                            Save  
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        ගෙවීම් පටිපාටිය
                                                    </div>
                                                    <div class="panel-body" style="margin-bottom: -26px">
                                                        <div class="form-group">
                                                            <label class="col-sm-4  text-right" >කාල සීමාව :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonPeriodTypeID" name="nLonPeriodTypeID" onchange="onChangeNLPTypeIDLabel()">
                                                                    <option value="0">-N/A-</option>
                                                                    <option value="2">දින</option>
                                                                    <option value="3">සති</option>
                                                                    <option value="4">මාස</option>
                                                                    <option value="5">වර්ෂ</option>
                                                                </select>                                                                                   
                                                            </div>
                                                            <div class="col-md-2 bg-pad">
                                                                <input required=""data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nLonPeriod" name="nLonPeriod" onkeyup="onChangeNLPTypeIDLabel()" onchange="onChangeNLPTypeIDLabel()" type="number">                                                                                 
                                                            </div>
                                                            <label class="col-sm-1  text-right" id="nLPTypeIDLabel"></label>
                                                            <label class="col-sm-1  text-right">ක්</label>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >නිදහස් කාල සීමාව :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonPaymentFreeTypeID" name="nLonPaymentFreeTypeID" onchange="onChangeNLPFTypeIDLabel()">
                                                                    <option value="0">-N/A-</option>
                                                                    <option value="2">දින</option>
                                                                    <option value="3">සති</option>
                                                                    <option value="4">මාස</option>
                                                                    <option value="5">වර්ෂ</option>
                                                                </select>                                                                                   
                                                            </div>
                                                            <div class="col-md-2 bg-pad">
                                                                <input required=""data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nLonPaymentFreeTime" name="nLonPaymentFreeTime" onkeypress="onChangeNLPFTypeIDLabel()" onchange="onChangeNLPFTypeIDLabel()" type="number">                                                                                 
                                                            </div>
                                                            <label class="col-sm-1  text-right" id="nLPFTypeIDLabel"></label>
                                                            <label class="col-sm-1  text-right">ක්</label>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >පළමු ගෙවීම ආරම්භ වන දිනය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dFirstInstallmentDate" name="dFirstInstallmentDate" type="date">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >අවසාන ගෙවීම් දිනය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dMaturityDate" name="dMaturityDate" type="date">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ණය අයකරගැනිමේ වර්ගය :</label>
                                                            <div class="col-md-8">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonDeductTypeID" name="nLonDeductTypeID">
                                                                    <option value="0">-තෝරන්න-</option>

                                                                    <option value="1">GENARAL</option>

                                                                    <option value="2">PORCELAIN - 1 </option>

                                                                    <option value="3">PORCELAIN - 2</option>

                                                                    <option value="4">PORCELAIN - 3</option>

                                                                    <option value="5">SAMURDHI-1</option>

                                                                    <option value="6">DANKOTUWA HOSPITAL</option>

                                                                    <option value="7">PRADESHIYA SABA</option>

                                                                    <option value="8">MPCS DANKOTUWA</option>

                                                                    <option value="9">SAMAJA ARACKSHANA</option>

                                                                    <option value="10">OTHER</option>

                                                                    <option value="11">OTHER-2 OVER DUE</option>

                                                                </select>                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >ණය අයකිරීමේ ක්‍රමය :</label>
                                                            <div class="col-md-8">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonGrpID" name="nLonGrpID">
                                                                    <option value="0">-තෝරන්න-</option>

                                                                    <option value="1">heenawan shesha</option>

                                                                    <option value="2">sama warika</option>

                                                                </select>                                                                                 
                                                            </div>
                                                        </div>
                                                        <div class="form-group "> 
                                                            <label class="col-sm-4  text-right" >ස්ථිර පොළියක් නම් පොළී මුදල :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nFixedInterestValue" name="nFixedInterestValue" type="text">     
                                                            </div>
                                                        </div>
                                                        <div class="form-group "> 
                                                            <label class="col-sm-4  text-right" >වාරික අය කිරීමේ ක්‍රමය :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <select required="" class="form-control  convertSinhalaIskolaPotha" id="nLonInstallmentPayTypeID" name="nLonInstallmentPayTypeID" onchange="onChahgeNLIPTypeIDLabel()">
                                                                    <option value="0">-N/A-</option>
                                                                    <option value="2">දින</option>
                                                                    <option value="3">සති</option>
                                                                    <option value="4">මාස</option>
                                                                    <option value="5">වර්ෂ</option>
                                                                </select>                                                                                   
                                                            </div>
                                                            <div class="col-md-2 bg-pad">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nLonInstallmentPayTime" name="nLonInstallmentPayTime" onkeypress="onChahgeNLIPTypeIDLabel()" onchange="onChahgeNLIPTypeIDLabel()" type="number">                                                                                 
                                                            </div>
                                                            <label class="col-sm-1  text-left"  id="nLIPTypeIDLabel"></label>
                                                            <label class="col-sm-1  text-left" >වරක්</label>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >වාරික මුදල :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nInstallmentAmount" name="nInstallmentAmount" type="text">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >සැකසු වාරිකය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nInstallmentAmountAdj" name="nInstallmentAmountAdj" type="text">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >අවසාන වාරිකය :</label>
                                                            <div class="col-md-8">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nInstallmentAmountLast" name="nInstallmentAmountLast" type="text">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-4  text-right" >කල්පසු වීමට දින ගණන :</label>
                                                            <div class="col-md-2">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nDueDaysAfter" name="nDueDaysAfter" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-2  text-left" >අයවන දිනය :</label>
                                                            <div class="col-md-4">
                                                                <input data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nDeductDay" name="nDeductDay" type="text">                                                                                   
                                                            </div>
                                                        </div>                                                                    
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        ණය ආපසු ගෙවිමේ තොරතුරු
                                                    </div>
                                                    <div class="panel-body" style="margin-bottom: -26px">
                                                        <div class="form-group">
                                                            <label class="col-sm-3  text-right" >නිකුත් කළ මුදල :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nIssuedAmount" name="nIssuedAmount" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-2  text-right" >ඉතිරිය :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nBalanceToIssue" name="nBalanceToIssue" type="text">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >අයවී ඇති මුදල :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nTotRecvCapital" name="nTotRecvCapital" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-2  text-right" >වාරික :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nTotRecvInstallment" name="nTotRecvInstallment" type="number">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >අයවිය යුතු මුදල :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nShouldRecvCapital" name="nShouldRecvCapital" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-2  text-right" >වාරික :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nShouldRecvInstallment" name="nShouldRecvInstallment" type="number">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >අයවී ඇති පොළිය :</label>
                                                            <div class="col-md-3">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nTotRecvInterest" name="nTotRecvInterest" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-3  text-right" >අයවිය යුතු පොළිය :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nShouldRecvInterest" name="nShouldRecvInterest" type="text">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >ගෙවීමට ඇති මුදල :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nLonBalanceAmount" name="nLonBalanceAmount" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-2  text-right" >වාරික :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nLonBalanceInstallment" name="nLonBalanceInstallment" type="number">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >අවසාන වාරික දිනය :</label>
                                                            <div class="col-md-3 bg-pad">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dLastCapitalPayDate" name="dLastCapitalPayDate" type="date">                                                                                   
                                                            </div>
                                                            <label class="col-sm-3  text-right" >පොළී දිනය :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" class="form-control  convertSinhalaIskolaPotha" id="dLastIntPayDate" name="dLastIntPayDate" type="date">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >හිඟ වාරික මුදල :</label>
                                                            <div class="col-md-4 bg-pad">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nToDateDueCapital" name="nToDateDueCapital" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-2  text-right" >වාරික :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" id="nToDateDueInstallment" name="nToDateDueInstallment" type="number">                                                                                   
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="col-sm-3  text-right" >පොළිය :</label>
                                                            <div class="col-md-3 bg-pad">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nToDateIntValueRound" name="nToDateIntValueRound" type="text">                                                                                   
                                                            </div>
                                                            <label class="col-sm-1  text-right" ></label>
                                                            <input required="" class="form-control  convertSinhalaIskolaPotha" id="nToDateDueDays" name="nToDateDueDays" type="hidden">                                                                                   
                                                            <label class="col-sm-2  text-right" >හිඟ පොළිය :</label>
                                                            <div class="col-md-3" style="padding-left: 0px">
                                                                <input required="" data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" id="nToDateTotIntersest" name="nToDateTotIntersest" type="text">                                                                                   
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
                    </form>
                </div>
                <div class="panel box box-info bg-panel">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false" >
                        <h4 class="box-title logo">
                            <a id="collapseTwoT" >
                                <span class="fa fa-dollar">  ණය ඉල්ලුම්පත </span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                        <div class="box-body">
                            <div class="row">                                                        
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <div class="btn-group btn-group-justified">
                                                <div class="btn-group">
                                                    <a id="aAdd" href="./view_customers.jsp?tellerIndexKey=loanpatner" type="button" class="btn btn-info">හවුල්කරුවන් ඇතුලත් කිරීම</a>
                                                </div>
                                                <div class="btn-group">
                                                    <button id="btnRemove" type="button" class="btn btn-info" data-toggle="modal" data-target="#remove" disabled="">හවුල්කරුවන්  ඉවත් කිරීම</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <tbody><tr>
                                                        <th class="text-center">පා .ලි .අංකය </th>
                                                        <th class="text-center">නම </th>
                                                        <th class="text-center"></th>
                                                        <th class="text-center">අත්සන</th>
                                                        <th class="text-center">වෙනත් විස්තර </th>
                                                    </tr>


                                                </tbody></table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed btn btn-warning btn-sm" aria-expanded="false">Back</a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed btn btn-info btn-sm" aria-expanded="false">Next</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-info bg-panel">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <a id="collapseThreeT" >
                                <span class="fa fa-money">ණය නිකුත්කිරීම හා අයකිරීම</span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <!--<h5>ණය නිකුත් කිරීමේ හා ආපසු ලබාගැනීමේ ක්‍රියා පටිපාටිය</h5>-->
                                    <h5 class="panel-title">ණය අයකරගැනීමේ ආකාරයන් </h5>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="form-group ">
                                                <div class="row">
                                                    <label class="col-sm-6 "><div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="c" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>වාරික මුදලින් අයකර ගැනීම</label>
                                                    <div class="col-md-6">
                                                        <label class="text-green ">ගිණුම් අංකය :</label>                                                                                
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <div class="row">
                                                    <label class="col-sm-6 "><div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="c" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>වාරිකය තැම්පත් ගිණුමකින් අයකරගැනීම </label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input class="form-control  convertSinhalaIskolaPotha" type="text">
                                                            <span class="input-group-addon "><i class="fa fa-search"></i></span>
                                                        </div>                                                                               
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <div class="row">
                                                    <label class="col-sm-6  text-red">සෑම මාසයකම ණය අයකරගැනීමේ දිනය </label>
                                                    <div class="col-md-6">
                                                        <input data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" type="number">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <!--<h5>ණය නිකුත් කිරීමේ හා ආපසු ලබාගැනීමේ ක්‍රියා පටිපාටිය</h5>-->
                                    <h5 class="panel-title">ණය නිකුත් කිරීමේ ආකාරයන් </h5>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="form-group ">
                                                <div class="row">
                                                    <label class="col-sm-6 "><div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="d" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>ණය මුදලින් නිකුත් කිරීම </label>
                                                    <div class="col-md-6">
                                                        <label class="text-green ">ගිණුම් අංකය :</label>                                                                                
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <div class="row">
                                                    <label class="col-sm-6 "><div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input name="d" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>ණය මුදල වෙනත් ත්ම්පත් ගිණුමකට මාරු කිරීම </label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input class="form-control  convertSinhalaIskolaPotha" type="text">
                                                            <span class="input-group-addon  "><i class="fa fa-search"></i></span>
                                                        </div>                                                                               
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed btn btn-warning btn-sm" aria-expanded="false">Back</a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed btn btn-info btn-sm" aria-expanded="false">Next</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-info bg-panel">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <a id="collapseFourT" >
                                <span class="fa fa-book"> ලිපි ලේඛණ </span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered">
                                        <tbody><tr>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                                <td>as</td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
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
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody></table>
                                </div>
                                <div class="col-md-4">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed btn btn-warning btn-sm" aria-expanded="false">Back</a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="collapsed btn btn-info btn-sm" aria-expanded="false">Next</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-info bg-panel">
                    <div class="box-header"  data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <a id="collapseFiveT">
                                <span class="fa fa-user">   පුද්ගල ඇපකරුවන්</span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table table-bordered" style="margin-bottom: -9px">
                                                    <tbody>
                                                        <tr style="padding: 0px">
                                                            <td style="padding: 0px;width: 150px">


                                                                <form class="form-horizontal" action="#" method="post" name="garenterDetailForm" id="garenterDetailForm" onsubmit="validateGaraenterDetails(this);
                                                                        return false;">
                                                                    <div class="input-group">
                                                                        <input name="accMifValue" id="accMifValue" value="loanMIFNumber" type="hidden">
                                                                        <input data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" placeholder="පා.ලි අංකය" id="accMifNumer" autocomplete="off" name="accMifNumer" value="" onkeydown="accMIFCursorKeyDown(event)" style="font-size: 15px;font-weight: bold" type="text">
                                                                        <span class="input-group-btn">
                                                                            <button class="btn btn-info btn-flat btn-sm" type="submit"><i class="fa fa-search"></i></button>
                                                                        </span>

                                                                    </div>
                                                                </form>
                                                            </td>
                                                            <td style="padding: 0px"><input data="validate" data-type="letterS  " class="form-control " id="loanGarnterName" name="loanGarnterName" value="" placeholder="නම" style="font-size: 15px;font-weight: bold" type="text"></td>
                                                            <td style="padding: 0px;width: 150px">
                                                                <select class="form-control  convertSinhalaIskolaPotha" id="type" name="type">
                                                                    <option value="Garrenter1">Garrenter 1</option>
                                                                    <option value="Garrenter2">Garrenter 2</option>
                                                                    <option value="Garrenter3">Garrenter 3</option>
                                                                    <option value="Garrenter4">Garrenter 4</option>
                                                                    <option value="Garrenter5">Garrenter 5</option>
                                                                    <option value="Garrenter6">Garrenter 6</option>
                                                                    <option value="Garrenter7">Garrenter 7</option>
                                                                    <option value="Garrenter8">Garrenter 8</option>
                                                                    <option value="Garrenter9">Garrenter 9</option>
                                                                    <option value="Garrenter10">Garrenter 10</option>
                                                                    <option value="Garrenter11">Garrenter 11</option>
                                                                    <option value="Garrenter12">Garrenter 12</option>
                                                                    <option value="Garrenter13">Garrenter 13</option>
                                                                    <option value="Garrenter14">Garrenter 14</option>
                                                                    <option value="Garrenter15">Garrenter 15</option>
                                                                </select>
                                                            </td>
                                                            <td style="padding: 0px;width: 430px">
                                                                <input class="form-control  convertSinhalaIskolaPotha" id="remaks" name="remaks" type="text">
                                                                <input class="form-control " id="indexNum" name="indexNum" value="-100" type="hidden">
                                                            </td>
                                                            <td style="padding: 0px;width: 10px">
                                                                <input class="btn btn-sm" value="Add" id="addGarenter" name="addGarenter" onclick="onClickGarenterAdd()" type="button">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: #00c0ef">
                                                            <th class="text-center">පා.ලි අංකය</th>
                                                            <th class="text-center">නම</th>
                                                            <th class="text-center">Type</th>
                                                            <th class="text-center" colspan="2">Remarks</th>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="zTreeDemoBackground left">
                                                    <ul id="treeDemo" class="ztree" style="width: auto;height:300px;">
                                                        <table id="garanterDetailsTable" class="table table-bordered">
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <form action="../NewBnkLonLoanGurantorServlet" method="post" name="savingDetailSubmitForm" onsubmit="validateGaraenterDetailsSubmit();
                                            return false;">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed btn btn-warning btn-sm" aria-expanded="false">Back</a>
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed btn btn-info btn-sm" aria-expanded="false">Next</a>
                                        <input id="nLonMFIDGarenter" name="nLonMFID" value="" type="hidden">
                                        <button class="btn btn-success btn-sm" type="submit">Save</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel box box-info bg-panel">
                    <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="collapsed" aria-expanded="false">
                        <h4 class="box-title logo">
                            <a id="collapseSixT" >
                                <span class="fa fa-user">වෙනත් ඇප</span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="nav-tabs-custom">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab_1" data-toggle="tab">ස්ථිර තැම්පත් ණය </a></li>
                                            <li><a href="#tab_2" data-toggle="tab">ඔප්පු ණය</a></li>                                                                    
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_1">
                                                <div class="row">
                                                    <div class="col-md-12 ">
                                                        <div class="form-group">
                                                            <div class="row">
                                                                <label class="col-sm-2 ">ඔප්පුවේ නම  </label>
                                                                <div class="col-md-4">                                                                                       
                                                                    <div class="input-group">
                                                                        <input class="form-control  convertSinhalaIskolaPotha" type="text">
                                                                        <span class="input-group-addon "><i class="fa fa-search"></i></span>
                                                                    </div>
                                                                </div> 
                                                                <label class="col-sm-2 ">වර්ගය </label>
                                                                <label class="col-sm-4 ">.......................</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 ">
                                                        <div class="form-group">
                                                            <div class="row">                                                                               
                                                                <div class="col-md-6 btn-group">                                                                                       
                                                                    <div class=" pull-right">
                                                                        <button class="btn btn-success">පුද්ගල ඇපකරු 1</button>
                                                                        <button class="btn btn-success">පුද්ගල ඇපකරු 2</button>
                                                                    </div>
                                                                </div> 
                                                                <label class="col-sm-2 ">නම </label>
                                                                <label class="col-sm-4 ">................................ </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 ">
                                                        <div class="form-group ">
                                                            <div class="row">
                                                                <label class="col-sm-4  pull-right">................................ </label>
                                                                <label class="col-sm-2  pull-right">ශේෂය </label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_2">
                                                <div class="row">                                                                    
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <div class="row">
                                                                <label class="col-sm-1 ">ඔප්පු අංකය </label>
                                                                <div class="col-md-2">                                                                                       
                                                                    <input data="validate" data-type="number" class="form-control  convertSinhalaIskolaPotha" type="text">
                                                                </div>                                                                               
                                                                <label class="col-sm-1 "> ලියාපදිංචි දිනය </label>
                                                                <div class="col-md-2">                                                                                       
                                                                    <input class="form-control  convertSinhalaIskolaPotha" type="date">
                                                                </div>                                                                               
                                                                <label class="col-sm-2 ">උකස් වටිනාකම </label>
                                                                <div class="col-md-4">                                                                                       
                                                                    <input data="validate" data-type="decimal" class="form-control  convertSinhalaIskolaPotha" type="text">
                                                                </div>                                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12  ">
                                                        <div class="form-group">
                                                            <div class="row">
                                                                <label class="col-sm-1 ">ඔප්පුවේ නම  </label>
                                                                <div class="col-md-5">                                                                                       
                                                                    <input data="validate" data-type="letterS" class="form-control  convertSinhalaIskolaPotha" type="text">
                                                                </div>                                                                               

                                                                <label class="col-sm-2 ">උකස් නිදහස් කළ දිනය</label>
                                                                <div class="col-md-4">                                                                                       
                                                                    <input class="form-control  convertSinhalaIskolaPotha" type="text">
                                                                </div>                                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed btn btn-warning btn-sm" aria-expanded="false">Back</a>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed btn btn-info btn-sm" aria-expanded="false">Next</a>
                                    <a class="collapsed btn btn-success btn-sm" aria-expanded="false">Submit</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/validate.js" type="text/javascript"></script>
    <script src="js/loadPage.js" type="text/javascript"></script>
    <script src="js/submit.js" type="text/javascript"></script>
    <script>

                                        $("#cCIFNo").keydown(function (e) {
                                            if (e.keyCode === 13) {
                                                e.preventDefault();
                                                $('div.content-wrapper').html('<center><img src="assets/img/icon/Ellipsis-2.4s-55px.gif" alt="" /><center>').load("load/loan/loanDiteils.jsp?cCIFNo=" + $(this).val()).fadeIn("slow");
                                                ;
                                            }
                                        });
                                        $('input[type="checkbox"].flat-red,input[type="radio"].flat-red').iCheck({
                                            checkboxClass: 'icheckbox_flat-green',
                                            radioClass: 'iradio_flat-green'
                                        });
    </script>
</section>
