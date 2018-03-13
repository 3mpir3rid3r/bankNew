<%-- 
    Document   : customer
    Created on : Feb 23, 2018, 3:23:53 PM
    Author     : mmh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.nbs.worker.Server"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
    <form action="insertCustomerServlet" method="">
        <div class="row">
            <%
                Server server = new Server();
                List<List<Object>> outPut = null;
                List<Object> outPutCustomer = null;
                ArrayList in = new ArrayList();
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String nCustomerID = "0",
                        nCustomerCategoryID = "",
                        nCustomerStatusID = "",
                        nTitleID = "",
                        cCIFNo = "",
                        cCIFNo_Old = "",
                        cInitials = "",
                        cFullName = "",
                        cFullName_Ama = "",
                        cLastName = "",
                        cUseName = "",
                        bFeMale = "",
                        nIDTypeID = "",
                        cNICNo = "",
                        dNICIssuedDate = "",
                        dDateOfBirth = "",
                        dJoineDate = "",
                        cMotherMadName = "",
                        nNationalityID = "",
                        nReligionID = "",
                        nCivilStatusID = "",
                        cPAddLine1 = "",
                        cPAddLine2 = "",
                        cPAddLine3 = "",
                        cPAddLine4 = "",
                        cBAddLine1 = "",
                        cBAddLine2 = "",
                        cBAddLine3 = "",
                        cBAddLine4 = "",
                        cPTelNo1 = "",
                        cPTelNo2 = "",
                        cBTelNo1 = "",
                        cBTelNo2 = "",
                        cPEmail = "",
                        cBEmail = "",
                        cMemberShipNo = "",
                        dMemberShipDate = "0001-01-01",
                        nMemAreaID = "",
                        nMemAreaGroupID = "",
                        nMemStatusID = "",
                        nMemPositionID = "",
                        nMemberShipFee = "",
                        cPictureFileName = "",
                        cSignatureFileName = "",
                        cSigPath2 = "",
                        cSigPath3 = "";
                if (request.getParameter("cCIFNo") != null) {

                    in.add(request.getParameter("cCIFNo").toString());
                    in.add("");
                    outPutCustomer = server.searchSingleResult(in, "ssp_bnk_DisplayData_CustomerMaster", 46);

                    if (outPutCustomer.size() != 0) {
                        nCustomerID = outPutCustomer.get(0).toString();
                        nCustomerCategoryID = outPutCustomer.get(1).toString();
                        nCustomerStatusID = outPutCustomer.get(2).toString();
                        nTitleID = outPutCustomer.get(3).toString();
                        cCIFNo = outPutCustomer.get(4).toString();
                        cCIFNo_Old = outPutCustomer.get(5).toString();
                        cInitials = outPutCustomer.get(6).toString();
                        cFullName = outPutCustomer.get(7).toString();
                        cFullName_Ama = outPutCustomer.get(8).toString();
                        cLastName = outPutCustomer.get(9).toString();
                        cUseName = outPutCustomer.get(10).toString();
                        bFeMale = outPutCustomer.get(11).toString();
                        nIDTypeID = outPutCustomer.get(12).toString();
                        cNICNo = outPutCustomer.get(13).toString();
                        dNICIssuedDate = sdf.format(outPutCustomer.get(14));
                        dDateOfBirth = sdf.format(outPutCustomer.get(15));
                        dJoineDate = sdf.format(outPutCustomer.get(16));
                        cMotherMadName = outPutCustomer.get(17).toString();
                        nNationalityID = outPutCustomer.get(18).toString();
                        nReligionID = outPutCustomer.get(19).toString();
                        nCivilStatusID = outPutCustomer.get(20).toString();
                        cPAddLine1 = outPutCustomer.get(21).toString();
                        cPAddLine2 = outPutCustomer.get(22).toString();
                        cPAddLine3 = outPutCustomer.get(23).toString();
                        cPAddLine4 = outPutCustomer.get(24).toString();
                        cBAddLine1 = outPutCustomer.get(25).toString();
                        cBAddLine2 = outPutCustomer.get(26).toString();
                        cBAddLine3 = outPutCustomer.get(27).toString();
                        cBAddLine4 = outPutCustomer.get(28).toString();
                        cPTelNo1 = outPutCustomer.get(29).toString();
                        cPTelNo2 = outPutCustomer.get(30).toString();
                        cBTelNo1 = outPutCustomer.get(31).toString();
                        cBTelNo2 = outPutCustomer.get(32).toString();
                        cPEmail = outPutCustomer.get(33).toString();
                        cBEmail = outPutCustomer.get(34).toString();
                        cMemberShipNo = outPutCustomer.get(35).toString();
                        dMemberShipDate = sdf.format(outPutCustomer.get(36));
                        nMemAreaID = outPutCustomer.get(37).toString();
                        nMemAreaGroupID = outPutCustomer.get(38).toString();
                        nMemStatusID = outPutCustomer.get(39).toString();
                        nMemPositionID = outPutCustomer.get(40).toString();
                        nMemberShipFee = outPutCustomer.get(41).toString();
                        cPictureFileName = outPutCustomer.get(42).toString();
                        cSignatureFileName = outPutCustomer.get(43).toString();
                        cSigPath2 = outPutCustomer.get(44).toString();
                        cSigPath3 = outPutCustomer.get(45).toString();
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
            <div class="col-md-9" >
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="row ">
                            <div class="form-group">
                                <label class="col-md-2 text-right">පා.ලි අංකය :</label>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input type="hidden" name="nCustomerID" value="<%=nCustomerID%>" id="customerId">
                                        <input type="text" class="form-control " name="cCIFNo" value="<%=cCIFNo%>" id="cCIFNo" placeholder="00000000" data="validate" data-type="number">
                                        <span class="input-group-btn">
                                            <a class="btn btn-info btn-flat" type="button" data="load" data-load="load/teller/viewCustomer.jsp" data-param="type=customer"><i class="fa fa-search"></i></a>
                                        </span>
                                    </div>
                                </div>

                                <label class="col-md-2 text-right">පාරි: වර්ගය :</label>
                                <div class="col-md-4">
                                    <select required class="form-control input-sm convertSinhalaIskolaPotha" name="nCustomerCategoryID" id="nCustomerCategoryID" onchange="this.style.borderColor = ''">
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <%
                                            in.clear();
                                            in.add(2);
                                            outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 3);
                                            if (out != null) {
                                                for (List o : outPut) {
                                        %>
                                        <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                    <script>
                                        $("#nCustomerCategoryID").val(<%=nCustomerCategoryID%>);
                                    </script>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="form-group">
                                <label class="col-md-2 text-right">භාවිතා වන නම :</label>
                                <div class="col-md-2">
                                    <select required class="form-control input-sm convertSinhalaIskolaPotha" name="nTitleID" id="nTitleID" onchange="this.style.borderColor = ''">
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <%
                                            in.clear();
                                            in.add(6);
                                            outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                            if (outPut != null) {
                                                for (List o : outPut) {
                                        %>
                                        <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                    <script>
                                        $("#nTitleID").val(<%=nTitleID%>);
                                    </script>
                                </div>                                                        
                                <div class="col-md-8">
                                    <input required type="text" class="form-control input-sm convertSinhalaIskolaPotha" name="cUseName" id="cUseName" value="<%=cUseName%>" onclick="this.style.borderColor = ''" data="validate" data-type="letterS">
                                </div>
                            </div>  
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-2 text-right">සම්පූර්ණ නම :</label>
                                <div class="col-md-10">
                                    <input required type="text" class="form-control input-sm convertSinhalaIskolaPotha" name="cFullName" id="cFullName" value="<%=cFullName%>" onclick="this.style.borderColor = ''"  data="validate" data-type="letterS">
                                </div> 
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-2 text-right">සම්පූර්ණ නම(සි):</label>
                                <div class="col-md-10">
                                    <input required type="text" class="form-control input-sm convertSinhalaAmali" name="cFullName_Ama" id="cFullName_Ama" value="<%=cFullName_Ama%>" onclick="this.style.borderColor = ''" onkeyup="keyup1(event, 'cFullName_Ama')" data="validate" data-type="letterSS">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-2 text-right">මුලකුරු :</label>
                                <div class="col-md-2">
                                    <input readonly  type="text" class="form-control input-sm bg-pad convertSinhalaIskolaPotha" name="cInitials" id="cInitials" value="<%=cInitials%>" onclick="this.style.borderColor = ''">
                                </div>
                                <label class="col-md-2 text-right">අවසාන නම :</label>
                                <div class="col-md-3">
                                    <input readonly type="text" class="form-control input-sm convertSinhalaIskolaPotha" name="cLastName" id="cLastName" value="<%=cLastName%>" onclick="this.style.borderColor = ''">
                                </div>
                                <div class="col-md-3" style="margin-top: -5px">
                                    <label class="radio-inline"><input type="radio" value="1" name="bFeMale" id="female" > ස්ත්‍රී</label>
                                    <label class="radio-inline"><input type="radio" value="0" name="bFeMale" id="male"> පුරුෂ</label>
                                </div>
                                <script>
                                    if (<%=bFeMale%> == 1) {
                                        $("#female").prop("checked", true);
                                    } else if (<%=bFeMale%> == 0) {
                                        $("#male").prop("checked", true);
                                    }
                                </script>
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
                                <img id="userImage" class="img-thumbnail" src="dist/img/icon.png" style="height: 125px">
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
                                <label class="col-md-3 text-right">ජා.හැ.අංකය :</label>
                                <div class="col-md-3" style="padding-right: 5px;">
                                    <input required="" class="form-control text-right convertSinhalaIskolaPotha" placeholder="000000000V" name="cNICNo" id="cNICNo" value="<%=cNICNo%>" data="validate" data-type="birthday" data-toggle="popover" title="" data-content="B'day is.." maxlength="12" minlength="10" data-original-title="BirthDay Calculator" type="text">
                                </div>
                                <label class="col-md-2 text-right" style="padding-left: 5px;">උපන් දිනය:</label>
                                <div class="col-md-4">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" id="dDateOfBirth" name="dDateOfBirth" value="<%=dDateOfBirth%>" onclick="this.style.borderColor = ''"  type="date">
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 text-right">නිකුත් කල දිනය :</label>
                                <div class="col-md-9">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="issueddate" id="dNICIssuedDate"  type="date" value="<%=dNICIssuedDate%>">
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 text-right">විවාහ/අවිවාහක:</label>
                                <div class="col-md-9">
                                    <select required="" class="form-control input-sm convertSinhalaIskolaPotha" name="nCivilStatusID" id="nCivilStatusID" >
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <%
                                            in.clear();
                                            in.add(5);
                                            outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                            if (outPut != null) {
                                                for (List o : outPut) {
                                        %>
                                        <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                    <script>
                                        $("#nCivilStatusID").val(<%=nCivilStatusID%>);
                                    </script>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 text-right">ජාතිය :</label>
                                <div class="col-md-9">
                                    <select required="" class="form-control input-sm convertSinhalaIskolaPotha" name="nNationalityID" id="nNationalityID" >
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <%
                                            in.clear();
                                            in.add(7);
                                            outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                            if (outPut != null) {
                                                for (List o : outPut) {
                                        %>
                                        <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                        <%
                                                }
                                            }
                                        %>  
                                    </select>
                                    <script>
                                        $("#nNationalityID").val(<%=nNationalityID%>);
                                    </script>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 text-right">ආගම :</label>
                                <div class="col-md-9">
                                    <select required="" class="form-control input-sm convertSinhalaIskolaPotha" name="nReligionID" id="nReligionID" >
                                        <option value="0"><label class="control-label">-N/A-</label></option>
                                        <%
                                            in.clear();
                                            in.add(8);
                                            outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                            if (outPut != null) {
                                                for (List o : outPut) {
                                        %>
                                        <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                        <%
                                                }
                                            }
                                        %>  
                                    </select>
                                    <script>
                                        $("#nReligionID").val(<%=nReligionID%>);
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 text-right">අරම්භක දිනය :</label>
                                <div class="col-md-9">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="dJoineDate" id="dJoineDate" value="<%=dJoineDate%>"  type="date">
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="form-group ">
                                <label class="col-md-3 text-right">මවගේ වාසගම :</label>
                                <div class="col-md-9">
                                    <input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cMotherMadName" id="cMotherMadName" value="<%=cMotherMadName%>" data="validate" data-type="letterS"  type="text">
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
                                        <td style="width: 175px"><label class="control-label">ලිපිනය 1</label></td>
                                        <td style="width: 650px"><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine1" id="cPAddLine1" value="<%=cPAddLine1%>" data="validate" data-type="address" data-line="line-1"  type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ලිපිනය 2</label></td>
                                        <td><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine2" id="cPAddLine2" value="<%=cPAddLine2%>" data="validate" data-type="address" data-line="line-2" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ලිපිනය 3</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine3" id="cPAddLine3" value="<%=cPAddLine3%>" data="validate" data-type="address" data-line="line-3" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ලිපිනය 4</label></td> 
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cPAddLine4" id="cPAddLine4" value="<%=cPAddLine4%>" data="validate" data-type="address" data-line="line-4" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">දුරකථන අංකය </label></td>
                                        <td><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPTelNo1" id="cPTelNo1" value="<%=cPTelNo1%>" data="validate" data-type="number" maxlength="10" minlength="10"  type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ඊ මේල් </label></td>
                                        <td><input required="" class="form-control input-sm convertSinhalaIskolaPotha" name="cPEmail" id="cPEmail" value="<%=cPEmail%>"  type="email"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab_2">
                            <table>
                                <tbody>
                                    <tr>
                                        <td style="width: 175px"><label class="control-label">ලිපිනය 1</label></td>
                                        <td style="width: 650px"><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine1" id="cBAddLine1" value="<%=cBAddLine1%>" data="validate" data-type="address" data-line="line-1" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ලිපිනය 2</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine2" id="cBAddLine2" value="<%=cBAddLine2%>" data="validate" data-type="address" data-line="line-2" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ලිපිනය 3</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine3" id="cBAddLine3" value="<%=cBAddLine3%>" data="validate" data-type="address" data-line="line-3" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ලිපිනය 4</label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBAddLine4" id="cBAddLine4" value="<%=cBAddLine4%>" data="validate" data-type="address" data-line="line-4" disabled="disabled" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">දුරකථන අංකය </label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBTelNo1" id="cBTelNo1" value="<%=cBTelNo1%>" data="validate" data-type="number" maxlength="10" minlength="10" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ඊ මේල් </label></td>
                                        <td><input class="form-control input-sm convertSinhalaIskolaPotha" name="cBEmail" id="cBEmail" value="<%=cBEmail%>" type="email"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab_3">
                            <table>
                                <tbody>
                                    <tr>
                                        <td style="width: 175px"><label class="control-label">සාමාජික අංකය</label></td>
                                        <td style="width: 650px"><input class="form-control text-right convertSinhalaIskolaPotha" name="cMemberShipNo" id="cMemberShipNo" value="<%=cMemberShipNo%>" data="validate" data-type="number" type="text"></td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">ප්‍රාදේශිකය</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha " name="nMemAreaID" id="nMemAreaID">
                                                <option value="0"><label class="control-label">-N/A-</label></option>
                                                <%
                                                    in.clear();
                                                    in.add(9);
                                                    outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                                    if (outPut != null) {
                                                        for (List o : outPut) {
                                                %>
                                                <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                                <%
                                                        }
                                                    }
                                                %>  
                                            </select> 
                                            <script>
                                                $("#nMemAreaID").val(<%=nMemAreaID%>);
                                            </script>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">කණ්ඩායමේ නම</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha" id="nMemAreaGroupID" name="nMemAreaGroupID">
                                                <option value="0"><label class="control-label">-N/A-</label></option>
                                                <%
                                                    in.clear();
                                                    in.add(10);
                                                    outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                                    if (outPut != null) {
                                                        for (List o : outPut) {
                                                %>
                                                <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                                <%
                                                        }
                                                    }
                                                %>  
                                            </select>
                                            <script>
                                                $("#nMemAreaGroupID").val(<%=nMemAreaGroupID%>);
                                            </script>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">තනතුර</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha" id="nMemStatusID" name="nMemStatusID">
                                                <option value="0"><label class="control-label">-N/A-</label></option>
                                                <%
                                                    in.clear();
                                                    in.add(3);
                                                    outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                                    if (outPut != null) {
                                                        for (List o : outPut) {
                                                %>
                                                <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                                <%
                                                        }
                                                    }
                                                %>  
                                            </select>
                                            <script>
                                                $("#nMemStatusID").val(<%=nMemStatusID%>);
                                            </script>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;"></tr>
                                    <tr>
                                        <td><label class="control-label">තත්වය</label></td>
                                        <td>
                                            <select class="form-control input-sm convertSinhalaIskolaPotha" id="nMemPositionID" name="nMemPositionID">
                                                <option value="0"><label class="control-label">-N/A-</label></option>
                                                <%
                                                    in.clear();
                                                    in.add(3);
                                                    outPut = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", 2);
                                                    if (outPut != null) {
                                                        for (List o : outPut) {
                                                %>
                                                <option value="<%= o.get(0).toString()%>"><label class="control-label"><%= o.get(1).toString()%></label></option>
                                                <%
                                                        }
                                                    }
                                                %>  
                                            </select>
                                            <script>
                                                $("#nMemPositionID").val(<%=nMemPositionID%>);
                                            </script>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="row">
                                                <label class="col-sm-3 bg-top">සාමාජික දිනය</label>
                                                <div class="col-sm-4 bg-top">
                                                    <input class="form-control input-sm convertSinhalaIskolaPotha" name="dMemberShipDate" id="dMemberShipDate" value="<%=dMemberShipDate%>" type="date">
                                                </div>
                                                <label class="col-sm-3 bg-top">සාමාජික මුදල  </label>
                                                <div class="col-sm-2 bg-top">
                                                    <input class="form-control text-right convertSinhalaIskolaPotha" placeholder="0.00" name="nMemberShipFee" id="nMemberShipFee" value="0" data="validate" data-type="decimal" type="text">
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
    <div id="convert"></div>
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/webcam.js" type="text/javascript"></script>
    <script src="js/validate.js" type="text/javascript"></script>
    <script src="js/loadPage.js" type="text/javascript"></script>
    <script src="js/submit.js" type="text/javascript"></script>
    <script type="text/javascript">

                                                $("#convert").load("load/uniConvert/unicodeConverter.jsp");

                                                function keyup1(e, element) {
                                                    var keynum;

                                                    if (window.event) { // IE                    
                                                        keynum = e.keyCode;
                                                    } else if (e.which) { // Netscape/Firefox/Opera                   
                                                        keynum = e.which;
                                                    }
                                                    if (keynum === 113) {
                                                        document.getElementById('txtSinglish').setAttribute('onkeyup', "startText(document.getElementById('txtSinglish'),[document.getElementById('txtUnicode'),document.getElementById('" + element + "'),document.getElementById('txtAmali')],'ama');");
                                                        $("#myModal").modal();
                                                    }
                                                }
                                                $('#cFullName').keyup(function (e) {
                                                    if (e.keyCode !== 32) {
                                                        var fullName = $(this).val();
                                                        var iNSp = fullName.split(" ");
                                                        if (iNSp.length > 0) {
                                                            fullName = "";
                                                            $.each(iNSp, function (index) {
                                                                if (index === iNSp.length - 1)
                                                                    return  false;
                                                                fullName += iNSp[index].charAt(0) + " ";
                                                            });
                                                        }
                                                        $("#cInitials").val(fullName);
                                                        $("#cLastName").val(iNSp[iNSp.length - 1]);
                                                    }
                                                });
                                                Webcam.set({
                                                    width: 320,
                                                    height: 240,
                                                    image_format: 'jpeg',
                                                    jpeg_quality: 90
                                                });
                                                Webcam.attach('#canvas');
                                                $('#snap').click(function () {
                                                    Webcam.snap(function (data_uri) {
                                                        // display results in page
                                                        $('#image').html('<img src="' + data_uri + '"/>');
                                                    });
                                                });
                                                $("#cCIFNo").keydown(function (e) {
                                                    if (e.keyCode === 13) {
                                                        e.preventDefault();
                                                        $('div.content-wrapper').html('<center><img src="assets/img/icon/Ellipsis-2.4s-55px.gif" alt="" /><center>').load("load/teller/customerDetails.jsp?cCIFNo=" + $(this).val()).fadeIn("slow");
                                                        ;
                                                    }
                                                });
    </script>
    <div id="myCam" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <strong style="font-size: 20px;">Take Picture</strong>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>                   
                </div>
                <div class="modal-body " style="padding: 5px;">
                    <div class="row">
                        <center><div id="canvas" height="240" width="325" style="margin: 0px ;border: 2px #333 solid;border-radius: 5px;"></div></center> 
                    </div>
                    <div class="row">
                        <center><div id="image" height="240" width="325" ></div></center> 
                    </div>
                    <div class="row" style="padding-right: 30px;">
                        <button type="button" class="btn btn-info" id="snap" style="float: right">Snap</button>
                    </div>
                </div>
                <div class="panel-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal" onclick="send()">Save & Close</button>
                </div>
            </div>
        </div>
    </div>
</section>