<%-- 
    Document   : pawningDiteils
    Created on : Mar 1, 2018, 10:13:16 AM
    Author     : Elijah-PC
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.nbs.worker.Server"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .overlay {
        visibility: hidden;
        position: absolute;
        left: 0px;
        top: -35px;
        width:100%;
        height:100%;
        text-align:center;
        z-index: 1000;
    }
    .overlay2 {
        visibility: hidden;
        position: absolute;
        left: 150px;
        top: -125px;
        width:20%;
        height:100%;
        text-align:center;
        z-index: 1000;  
    }
    .overlay1 {
        visibility: hidden;
        position: absolute;
        left: 445px;
        top: 220px;
        width:50%;
        height:100%;
        text-align:center;
        z-index: 1000;  
    }

    .overlayDiv {

        margin: 100px auto;
        background-color: #fff;
        border:1px solid #000;
        padding:15px;
        text-align:center;
    }
    .form-group{
        padding-top: 5px;
    }
</style>
<section class="content-header">
    <h1>
        උකස් අත්තිකරම්
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Advanced Elements</li>
    </ol>
</section>
<section class="content">
    <%
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String currentDate = sdf.format(date);
        Server server = new Server();
        List<List<Object>> outPut = null;
        List<Object> outPutCustomer = null;
        ArrayList in = new ArrayList();
        String nCustomerID = "0",
                cCIFNo = "",
                cFullName = "",
                cNICNo = "",
                dNICIssuedDate = "",
                cPAddLine1 = "",
                cPAddLine2 = "",
                cPAddLine3 = "",
                cPAddLine4 = "",
                cPTelNo1 = "",
                cBTelNo1 = "";
        if (request.getParameter("cCIFNo") != null || request.getParameter("cNICNo") != null) {

            in.add((request.getParameter("cCIFNo") == null) ? "" : request.getParameter("cCIFNo").toString());
            in.add((request.getParameter("cNICNo") == null) ? "" : request.getParameter("cNICNo").toString());

            outPutCustomer = server.searchSingleResult(in, "ssp_bnk_DisplayData_CustomerMaster", 46);

            if (outPutCustomer.size() != 0) {
                nCustomerID = outPutCustomer.get(0).toString();
                cCIFNo = outPutCustomer.get(4).toString();
                cFullName = outPutCustomer.get(7).toString();
                cNICNo = outPutCustomer.get(13).toString();
                dNICIssuedDate = sdf.format(outPutCustomer.get(14));
                cPAddLine1 = outPutCustomer.get(21).toString();
                cPAddLine2 = outPutCustomer.get(22).toString();
                cPAddLine3 = outPutCustomer.get(23).toString();
                cPAddLine4 = outPutCustomer.get(24).toString();
                cPTelNo1 = outPutCustomer.get(29).toString();
                cBTelNo1 = outPutCustomer.get(31).toString();
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
    <div class="row bg-searchheight bg-top">
        <div class="col-md-12 bg-searchheight bg-pad">
            <form action="../PawningMasterServlet?key=0" method="post" name="ff" onsubmit="accept(this);
                    return true">
                <input type="hidden" value="0" id="tAdd" name="tAdd">
                <div class="row">
                    <div class="col-md-12 bg-pad">
                        <div class="col-lg-12" >
                            <div class="box box-success bg-color">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-lg-2">
                                                <label class="control-label" id="fontSize"></label><br>
                                                <label class="radio-inline"> <input type="radio" name="PWN" checked="" id="newPwn" onchange="disableDate()"> නව</label>
                                                <label class="radio-inline  pull-right"><input type="radio" name="PWN" id="oldPwn" onchange="disableDate()"> පැරණි</label>
                                            </div>
                                            <div class="col-lg-3">
                                                <label class="control-label" id="fontSize"></label>
                                                <select required="" class="form-control " id="BnkPwnPawnTypesID" name="BnkPwnPawnTypesID" onchange="setTicketID()" >
                                                    <option value="0" style="display:none;"></option>
                                                    <option class="convertSinhalaIskolaPotha" value="1">Member Pawning</option>
                                                    <option class="convertSinhalaIskolaPotha" value="2">Non-Member Pawning</option>
                                                    <option class="convertSinhalaIskolaPotha" value="3">Member Pawning Installment</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-4">
                                                <label class="control-label" id="fontSize"></label>
                                                <input id="ticketNumber" class="form-control  convertSinhalaIskolaPotha" placeholder="උකස් කුයිතාන්සි අංකය" type="text" disabled="">
                                            </div><div class="col-lg-3">
                                                <label class="control-label" id="fontSize"></label>
                                                <input class="form-control  convertSinhalaIskolaPotha" type="date" value="<%=currentDate%>" name="currentDate" id="currentDate">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>          
                        <!--old pwing find dialog-->   
                        <!--data fill ajax-->
                        <div class="overlay " id="overlay">
                            <div class="overlayDiv">
                                <div>
                                    <div id="tblDiv">

                                    </div>
                                    <br>
                                    <!--view data--> 
                                    <!--basic details-->
                                    <div id="dataDiv" class="box box-info ">

                                    </div>
                                    <!--end basic details-->
                                    <!--more Details-->

                                    <!--end More details-->
                                    <div style="width: auto">
                                        <div style="" align="right">
                                            <button type="button" onclick="overlayHide()" class="">Back</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>         

                        <!--end old pwning find-->    
                        <!--******************************************-->
                        <div class="col-md-9 bg-pad bg-top" >
                            <div class="box box-info bg-color">
                                <div class="box-body">
                                    <div class="row">
                                        <!--<div class="col-md-9">-->
                                        <div class="form-group">
                                            <label id="lbl" class="col-sm-2  text-right">ජා.හැ.අංකය:</label>
                                            <input type="hidden" value="1" id="lblChangName">
                                            <div class="col-sm-4">
                                                <div class="input-group">
                                                    <input autocomplete="off" required="" class="form-control  text-right convertSinhalaIskolaPotha" placeholder="ජා.හැ.අංකය" type="text" maxlength="12" minlength="10" id="cNICNo" name="cNICNo" value="<%=cNICNo%>" data-toggle="popover" title="" data-content="B'day is.." data="validate" data-type="birthday"  data-original-title="BirthDay Calculator">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-info btn-flat btn-sm" type="button" data="load" data-load="load/teller/viewCustomer.jsp" data-param="type=pawn"><i class="fa fa-search"></i></button>
                                                    </span>
                                                </div>
                                            </div>
                                            <label class="col-sm-2  text-right">නිකුත්කළ දිනය:</label>
                                            <div class="col-md-4">
                                                <input type="date" class="form-control  convertSinhalaIskolaPotha" name="dNICIssuedDate" id="dNICIssuedDate" placeholder="නිකුත් කළ දිනය" value="<%=dNICIssuedDate%>">
                                            </div>
                                        </div><br>
                                        <div class="form-group">
                                            <label class="col-sm-2  text-right">සම්පූර්ණ නම:</label>                                                                                                                           
                                            <div class="col-md-10">
                                                <input required="" type="text" class="form-control  convertSinhalaIskolaPotha" id="cFullName" name="cFullName" placeholder="සම්පූර්ණ නම" value="<%=cFullName%>" data="validate" data-type="letterS" >
                                            </div>
                                        </div><br>  
                                        <div class="form-group">
                                            <label class="col-sm-2  text-right">ලිපිනය 1:</label>
                                            <div class="col-md-4">
                                                <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" id="cPAddLine1" name="cPAddLine1" placeholder="ලිපිනය 1" value="<%=cPAddLine1%>" data="validate" data-type="address" data-line="line-1" >
                                            </div> 
                                            <label class="col-sm-2  text-right">ලිපිනය 2:</label>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" id="cPAddLine2" name="cPAddLine2" placeholder="ලිපිනය 2" value="<%=cPAddLine2%>" data="validate" data-type="address" data-line="line-2">
                                            </div> 
                                        </div> <br> 
                                        <div class="form-group">
                                            <label class="col-sm-2  text-right">ලිපිනය 3:</label>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" id="cPAddLine3" name="cPAddLine3" placeholder="ලිපිනය 3" value="<%=cPAddLine3%>" data="validate" data-type="address" data-line="line-3" disabled="disabled">
                                            </div> 
                                            <label class="col-sm-2  text-right">ලිපිනය 4:</label>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" id="cPAddLine4" name="cPAddLine4" placeholder="ලිපිනය 4" value="<%=cPAddLine4%>" data="validate" data-type="address" data-line="line-4" disabled="disabled">
                                            </div> 
                                        </div> <br> 
                                        <div class="form-group">
                                            <label class="col-sm-2  text-right">දුරකතන අංකය 1:</label>
                                            <div class="col-md-4">
                                                <input required="" type="text" class="form-control  col-lg-6 convertSinhalaIskolaPotha " id="cPTelNo1" minlength="10" maxlength="10" min="0" name="cPTelNo1" placeholder="දුරකතන අංකය 1" value="<%=cPTelNo1%>" data="validate" data-type="number" >
                                            </div> 
                                            <label class="col-sm-2  text-right">දුරකතන අංකය 2:</label>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control  col-lg-6 convertSinhalaIskolaPotha " id="cBTelNo1" minlength="10" maxlength="10" min="0" name="cBTelNo1" placeholder="දුරකතන අංකය 2" value="<%=cBTelNo1%>" data="validate" data-type="number">
                                            </div> 
                                        </div> 
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <!--select other details-->
                        <!--===============================-->
                        <div class="overlay1 " id="overlay1">
                            <div>
                                <div class="overlayDiv">
                                    <div id="tblrw" style="height: 300px;overflow-y: scroll"></div>

                                    <div class="col-sm-12">
                                        <label class="col-sm-3  text-right" > New Pawn Reason :</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control  col-lg-4 convertSinhalaAmali" id="pwnReasonSin" name="pwnReasonSin" value="">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <label class="col-sm-3  text-right" >Pawn Reason(Eng) :</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" id="pwnReasoneng" name="pwnReasoneng" value="">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div style="" align="right" class="form-group col-sm-12">
                                            <div class="col-lg-8"></div>
                                            <button type="button" onclick="saveNewReason();" class=" btn-success col-sm-2">Save</button>
                                            <button type="button" onclick="overlay1Hide()" class="btn-default col-sm-2">Cancel</button>
                                        </div>
                                    </div>
                                    <br><br><br><br><br><br><br>
                                </div>
                            </div>

                        </div>                   

                        <!--..................................................-->
                        <div class="col-md-3 bg-top" >
                            <div class="box box-info bg-color" style=" height:230px">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <!--<canvas id="canvas" style="width: 120px;height: 130px"></canvas>-->
                                            <center>
                                                <img id="userImage" class="img-thumbnail" src="dist/img/avatar.png" >
                                            </center>
                                        </div>
                                    </div>
                                </div><!-- /.box-body -->
                            </div>
                        </div>

                        <div class="col-md-12 bg-top" style=" height:190px; ">

                            <div class="box box-info bg-color" style=" height:180px;">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <table id="dataTable" class="  table-bordered table-hover text-center col-lg-12">
                                                <thead style="background-color: #005888">
                                                    <tr>
                                                        <th style="color: #e7f0f7" class="text-center ">උකස් භාණ්ඩ</th>
                                                        <th style="color: #e7f0f7" class="text-center ">කැරට් අගය</th>
                                                        <th style="color: #e7f0f7;width: 10px" class="text-center ">ප්&zwj;රමානය</th>
                                                        <th style="color: #e7f0f7" class="text-center ">වෙනත්</th>
                                                        <th style="color: #e7f0f7" class="text-center "></th>
                                                        <th style="color: #e7f0f7" class="text-center "></th>

                                                    </tr>
                                                </thead>

                                                <tbody><tr>
                                                        <th>
                                                            <select class="form-control " name="col1" id="col1">
                                                                <option value="0">- Select -</option>

                                                                <option class="convertSinhalaIskolaPotha" value="1">N/A</option>

                                                                <option class="convertSinhalaIskolaPotha" value="2">NORMAL CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="3">MACHINE CUT CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="4">EARRINGS</option>

                                                                <option class="convertSinhalaIskolaPotha" value="5">TUSSAL</option>

                                                                <option class="convertSinhalaIskolaPotha" value="6">RINGS</option>

                                                                <option class="convertSinhalaIskolaPotha" value="7">PENDENT</option>

                                                                <option class="convertSinhalaIskolaPotha" value="8">CHAINE WITH STONES</option>

                                                                <option class="convertSinhalaIskolaPotha" value="9">BANGALES</option>

                                                                <option class="convertSinhalaIskolaPotha" value="10">GYPSY</option>

                                                                <option class="convertSinhalaIskolaPotha" value="11">NECLES</option>

                                                                <option class="convertSinhalaIskolaPotha" value="12">BRESLET</option>

                                                                <option class="convertSinhalaIskolaPotha" value="13">CROSS</option>

                                                                <option class="convertSinhalaIskolaPotha" value="14">DAYAMAND CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="15">KARALI CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="16">ROPE CHAIN</option>

                                                                <option class="convertSinhalaIskolaPotha" value="17">PURUK CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="18">V-PURUK CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="19">PETHALI CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="20">1/2 COINSE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="21">GENSE RING</option>

                                                                <option class="convertSinhalaIskolaPotha" value="22">STON WITH RING</option>

                                                                <option class="convertSinhalaIskolaPotha" value="23">LEETERS WITH RING</option>

                                                                <option class="convertSinhalaIskolaPotha" value="24">DAGARA CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="25">SPRING</option>

                                                                <option class="convertSinhalaIskolaPotha" value="26">VOKE CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="27">ABARUM CHAINE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="28">PANCHAYUDA</option>

                                                                <option class="convertSinhalaIskolaPotha" value="29">THODU</option>

                                                                <option class="convertSinhalaIskolaPotha" value="30">ITHI MUDU</option>

                                                                <option class="convertSinhalaIskolaPotha" value="31">ITHI EARRINGS</option>

                                                                <option class="convertSinhalaIskolaPotha" value="32"></option>

                                                                <option class="convertSinhalaIskolaPotha" value="33">1 COINSE</option>

                                                                <option class="convertSinhalaIskolaPotha" value="34">null</option>

                                                                <option class="convertSinhalaIskolaPotha" value="35">null</option>

                                                                <option class="convertSinhalaIskolaPotha" value="36">ertetretrete</option>

                                                                <option class="convertSinhalaIskolaPotha" value="37">sferfre</option>

                                                                <option class="convertSinhalaIskolaPotha" value="38"> </option>

                                                                <option class="convertSinhalaIskolaPotha" value="39">dfdsfdsfds</option>

                                                                <option class="convertSinhalaIskolaPotha" value="40">sasasasa</option>

                                                                <option class="convertSinhalaIskolaPotha" value="41">rrrrrrrrrrrrrrrr</option>

                                                                <option class="convertSinhalaIskolaPotha" value="42">www</option>

                                                                <option class="convertSinhalaIskolaPotha" value="43">xxxxxxx</option>

                                                                <option class="convertSinhalaIskolaPotha" value="44">tttttttttttt</option>

                                                                <option class="convertSinhalaIskolaPotha" value="45">ctt</option>

                                                                <option class="convertSinhalaIskolaPotha" value="46">yyyyyyyyyyyyy</option>

                                                                <option class="convertSinhalaIskolaPotha" value="47">xcvcxvcx</option>

                                                                <option class="convertSinhalaIskolaPotha" value="48">1</option>

                                                                <option class="convertSinhalaIskolaPotha" value="49">tttttttttttttttttt</option>

                                                                <option class="convertSinhalaIskolaPotha" value="50">wwwwwwwwwwwwwwwwwwww</option>

                                                                <option class="convertSinhalaIskolaPotha" value="51">xzxzxzx</option>

                                                                <option class="convertSinhalaIskolaPotha" value="52">fghfghgfg</option>

                                                                <option class="convertSinhalaIskolaPotha" value="53">wewewewe</option>

                                                                <option class="convertSinhalaIskolaPotha" value="54">eeee</option>

                                                                <option class="convertSinhalaIskolaPotha" value="55">wewe</option>

                                                                <option class="convertSinhalaIskolaPotha" value="56">iojlf</option>

                                                            </select>
                                                        </th>
                                                        <th>
                                                            <select class="form-control " name="col2" id="col2">
                                                                <option value="0">- Select -</option>

                                                                <option class="convertSinhalaIskolaPotha" value="1">C - 18</option>

                                                                <option class="convertSinhalaIskolaPotha" value="3">C - 19</option>

                                                                <option class="convertSinhalaIskolaPotha" value="4">C - 20</option>

                                                                <option class="convertSinhalaIskolaPotha" value="5">C - 21</option>

                                                                <option class="convertSinhalaIskolaPotha" value="6">C - 22</option>

                                                                <option class="convertSinhalaIskolaPotha" value="7">C - 23</option>

                                                                <option class="convertSinhalaIskolaPotha" value="8">C - 24</option>

                                                            </select>
                                                        </th>
                                                        <th> <input type="text" class="form-control  col-lg-6  convertSinhalaIskolaPotha number" name="col3" id="col3" data="validate" data-type="number"></th>
                                                        <th> 
                                                            <!--                                                            <div class="input-group">-->
                                                            <input type="text" class="form-control  col-lg-6  convertSinhalaIskolaPotha" onkeypress="enterSubmit(event)" name="col4" id="col4">
                                                            <!--<th><span class="input-group-btn">-->
                                                        </th><th width="10px">  <button class="btn btn-info btn-sm" type="button" onclick="overlay1Hide();"><i class="fa fa-plus"></i>වෙනත්</button>
                                                            <!--</span>-->
                                                        </th>
                                                        <th width="10px">  <button id="add" class="btn btn-info btn-sm" type="button" ><i class="fa fa-plus"></i></button>
                                                            <!--</span>-->
                                                        </th>
                                                        <!--</div>-->

                                                    </tr>

                                                </tbody><tbody>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--...........................................-->

                </div>

                <!--------------------------------------->
                <!--<div class="col-md-12" style="margin-left: -15px; width: " >-->
                <div id="alertDialogs"></div>
                <div style="margin-left: 15px;">
                    <div class="box box-info bg-color">
                        <div class="box-body" id="setSizeDiv">
                            <div class="row">

                                <div id="hiddenDataDiv1" class="form-group">
                                    <label class="col-sm-2  text-right">භාණ්ඩ බර :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="භාණ්ඩ බර" name="nTotWgtArt" value="" id="nTotWgtArt" onkeyup="setTotWeightGold();
                                                checkTableData();" onclick="setTotWeightGold();
                                                        checkTableData();" data="validate" data-type="weight" >
                                    </div> 
                                    <label class="col-sm-2  text-right">ශුද්ධ රන් බර :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="ශුද්ධ රන් බර" value="" name="nTotWgtGold" id="nTotWgtGold" onkeyup="calPrice()" data="validate" data-type="weight" >
                                    </div> 
                                </div><div id="hiddenBrDiv1"> <br></div>
                                <div id="hiddenDataDiv2" class="form-group">

                                    <label class="col-sm-2  text-right">1 g 1ක වටිනාකම :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="1g 1ක වටිනාකම" value="" name="nOneGramAssessedValue" id="nOneGramAssessedValue" onkeyup="calPrice()" data="validate" data-type="decimal" >
                                    </div> 
                                    <label class="col-sm-2  text-right">වෙළදපල වටිනාකම :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="වෙළදපල වටිනාකම" value="" name="nTotMkrtValue" id="nTotMkrtValue" maxlength="10" onclick="setMaxPriceForAdv();" onkeyup="setMaxPriceForAdv();" data="validate" data-type="decimal" >
                                    </div>
                                </div><div id="hiddenBrDiv2"> <br></div>
                                <div id="hiddenDataDiv3" class="form-group">
                                    <label class="col-sm-2  text-right">තක්සේරු මුදල :</label>
                                    <div class="col-md-4">
                                        <input disabled="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="තක්සේරු මුදල" value="0.0" name="nTotAssessedValue" id="nTotAssessedValue" data="validate" data-type="decimal">
                                    </div> 
                                    <label class="col-sm-2  text-right">නිකුත්කල ණය මුදල :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="නිකුත්කල ණය මුදල" value="" name="nTotAdvAmount" id="nTotAdvAmount" maxlength="10" onclick="setMaxPriceForAdv();
                                                checkTableData();" onkeyup="setMaxPriceForAdv();
                                                        checkTableData();" data="validate" data-type="decimal" >
                                    </div> 
                                </div> <div id="hiddenBrDiv3"> <br></div>
                                <div id="hiddenDataDiv4" class="form-group">
                                    <label class="col-sm-2  text-right">පොළි අනුපාතය :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="පොළි අනුපාතය" value="" name="nActualInt" id="nActualInt" data="validate" data-type="decimal" >
                                    </div> 
                                    <label class="col-sm-2  text-right">එකග වූ පොළි අනුපාතය :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number" placeholder="එකග වූ පොළි අනුපාතය" value="" name="nAgreedInt" id="nAgreedInt" data="validate" data-type="decimal" >                                                        
                                    </div> 
                                </div> <div id="hiddenBrDiv4"> <br></div>
                                <div id="hiddenDataDiv5" class="form-group">
                                    <label class="col-sm-2  text-right" style="font-size: 13px">අපසු ගෙවීම :</label>
                                    <div class="col-md-2 bg-pad">
                                        <select required="" class="form-control  number" id="nPwnPeriodTypeID" "name="nPwnPeriodTypeID" onchange="onChangeNLPTypeIDLabel()" style="border-bottom-color: '';">

                                            <option value="1">-N/A-</option>
                                            <option value="2">දින</option>
                                            <option value="3">සති</option>
                                            <option value="4">මාස</option>
                                            <option value="5" selected="">වර්ෂ</option>


                                        </select>                                                                                   
                                    </div>
                                    <div class="col-md-1 bg-pad">
                                        <input required="" type="number" class="form-control  number" id="nPwnPeriod" value="0" name="nPwnPeriod" onkeyup="onChangeNLPTypeIDLabel()" onchange="onChangeNLPTypeIDLabel()" min="1" data="validate" data-type="number" style="border-bottom-color: '';">                                                                                 
                                    </div>
                                    <label class="col-sm-1  text-left" id="nLPTypeIDLabel">දින 365 ක්</label>
                                    <!--<label class="col-sm-1  text-right">ක්</label>-->
                                    <label class="col-sm-2  text-right">කල් පිරෙන දිනය :</label>
                                    <div class="col-md-4">
                                        <input required="" type="date" class="form-control  col-lg-4 convertSinhalaIskolaPotha" placeholder="කල් පිරෙන දිනය" value="null" name="dMaturityDate" id="dMaturityDate" >
                                    </div>
                                </div><div id="hiddenBrDiv5"> <br></div>
                                <div id="hiddenDataDiv6" class="form-group">
                                    <label class="col-sm-2  text-right">කුයිතාන්සි අංකය :</label>
                                    <div class="col-md-4">
                                        <input required="" type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" value="" placeholder="කුයිතාන්සි අංකය" name="cReceiptNo" id="cReceiptNo" data="validate" data-type="number" >
                                    </div> 
                                    <label class="col-sm-2  text-right">කාරණාව :</label>
                                    <div class="col-md-4">
                                        <select class="form-control  " id="nPwnDescriptionID" name="nPwnDescriptionID" disabled="">
                                            <option value="1">-N/A-</option>                                                            
                                        </select>  
                                    </div> 
                                </div> <div id="hiddenBrDiv6"> <br></div>
                                <div id="hiddenDataDiv7" class="form-group">                                                    
                                    <label class="col-sm-2  text-right">අවසාන ගණුදෙනු දිනය :</label>
                                    <div class="col-md-4">
                                        <input type="date" class="form-control  col-lg-4 convertSinhalaIskolaPotha" placeholder="අවසාන ගණුදෙනු දිනය" value="null" name="dLastPaymentDate" id="dLastPaymentDate">
                                    </div> 

                                    <label class="col-sm-2  text-right">දැනට ශේෂය :</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha text-right number " placeholder="දැනට ශේෂය" value="" name="nBalAmount" id="nBalAmount" data="validate" data-type="decimal">
                                    </div> 
                                </div><div id="hiddenBrDiv7"> <br></div>
                                <div id="hiddenDataDiv8" class="form-group"> 
                                    <label class="col-sm-2  text-right">වෙනත් විස්තර :</label>
                                    <div class="col-md-10">
                                        <!--<input type="text" class="form-control  col-lg-3"  placeholder="වෙනත් විස්තර" name="cRemrks " id="cRemrks "/>-->
                                        <textarea style="min-height: 100px;" placeholder="වෙනත් විස්තර" name="cRemrks " id="cRemrks" class="form-control  col-lg-3 convertSinhalaIskolaPotha"></textarea>
                                    </div> 
                                </div>
                                <!--New Article-->
                                <div id="articleDiv" hidden="">

                                    <div class="form-group">
                                        <label class="col-sm-1  text-right">Article Name</label>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control  col-lg-4 convertSinhalaAmali" placeholder="" name="cArticlenameSin" id="cArticlenameSin">
                                        </div> 
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2  text-right">Article Name(Eng)</label>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control  col-lg-4 convertSinhalaIskolaPotha" placeholder="" name="cArticlenameEng" id="cArticlenameEng">
                                        </div> 
                                    </div>
                                    <div class="col-sm-2">
                                        <input onclick="saveNewArticle()" id="btn1" type="button" class="btn btn-success btn-sm " value="Save">
                                        <input onclick="deActiveNewArticleDiv()" id="btn1" type="button" class="btn btn-primary btn-sm " value="Back">
                                    </div>

                                </div>   
                                <!--end new Article-->
                                <div class="alignright">
                                    <div id="btnGroup" class="col-md-10 pull-right bg-top" >
                                        <button id="btnPay" type="submit" class="btn btn-info  col-lg-2">ගෙවන්න/Pay</button>
                                        <button onclick="activeNewArticleDiv();" type="button" class="btn btn-primary col-lg-2">Add Articles</button>
                                        <button type="button" onclick="$('#myFile').modal('show')" class="btn btn-success col-lg-2">Add NIC Picture</button>
                                        <button type="button" onclick="$('#myCam').modal('show')" class="btn btn-success col-lg-2">Add Picture</button>
                                        <button onclick="removeSessionStoreDetails()" type="reset" class="btn btn-danger col-lg-2">Reset</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="hidden" value="" id="pic" name="userImage">
            </form>
        </div>
    </div>
    <script src="js/loadPage.js" type="text/javascript"></script>
    <script src="js/validate.js" type="text/javascript"></script>
    <script src="js/submit.js" type="text/javascript"></script>
    <script>
                                            $("#cNICNo").keydown(function (e) {
                                                if (e.keyCode === 13) {
                                                    $(this).popover('hide');
                                                    e.preventDefault();
                                                    $('div.content-wrapper').html('<center><img src="assets/img/icon/Ellipsis-2.4s-55px.gif" alt="" /><center>')
                                                            .load("load/pawning/pawningDiteils.jsp?cNICNo=" + $(this).val()).fadeIn("slow");
                                                }
                                            });

                                            $(document).ready(function () {
                                                $.post("getPawnResons", function (result) {
                                                    $("#tblrw").html(result);
                                                });

                                                $(document).on("click", ".select", function () {
                                                    $("#col4").val($(this).children("td:first").html());
                                                    overlay1Hide();
                                                });

                                                $("#add").click(function () {
                                                    if ($("#col1").val() !== 0 && $("#col2").val() !== 0 && $("#col3").val() !== "" && $("#col4").val() !== "") {
                                                        var newRowContent = "<tr><td>" + $("#col1 option:selected").text() + "</td><td>" + $("#col2 option:selected").text() + "</td><td>" + $("#col3").val() + "</td><td>" + $("#col4").val() + "</td></tr>";
                                                        $(newRowContent).appendTo($("#dataTable"));
                                                        $("#col1").val(0);
                                                        $("#col2").val(0);
                                                        $("#col3").val("");
                                                        $("#col4").val("");
                                                    }
                                                });

                                            });


                                            function overlay() {
                                                el = document.getElementById("overlay");
                                                el.style.visibility = (el.style.visibility === "visible") ? "visible" : "visible";
                                            }
                                            function overlay2() {
                                                el = document.getElementById("overlay2");
                                                el.style.visibility = (el.style.visibility === "visible") ? "visible" : "visible";
                                            }
                                            function overlayHide() {
                                                removeSession();
                                                document.getElementById("dataDiv").innerHTML = "";
                                                el = document.getElementById("overlay");
                                                el.style.visibility = (el.style.visibility === "visible") ? "hidden" : "visible";

                                            }
                                            function overlay1Hide() {
                                                el = document.getElementById("overlay1");
                                                el.style.visibility = (el.style.visibility === "visible") ? "hidden" : "visible";

                                            }
    </script>
</section>