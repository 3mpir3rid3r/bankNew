<%-- 
    Document   : viewCusomrt
    Created on : Mar 5, 2018, 10:38:41 AM
    Author     : mmh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.nbs.worker.Server"%>
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

<%
    final Server server = new Server();
    ArrayList in = new ArrayList();
    in.add(request.getSession().getAttribute("branchId"));
    in.add("");
    List<List<Object>> customerList = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_CustomerMaster", 10);
    String type = "";
    if (request.getParameter("type") != null) {
        type = request.getParameter("type");
    }
%>

<section class="content" style="display: none">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info" >
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12 bg-top" style="overflow: auto">
                            <table id="viewCustomer" class="table table-bordered table-hover" id="mem_sea_table">
                                <thead style="background-color: #97dff5">
                                    <tr>
                                        <th class="text-center" width="50px">ID</th>
                                        <th class="text-center" width="70px">CIF No</th>
                                        <th class="text-center" width="90px">Old CIF</th>
                                        <th class="text-center" width="300px">Full Name</th>
                                        <th class="text-center" width="300px">NIC</th>
                                        <th class="text-center">Address</th>
                                        <th class="text-center"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        String address = "";
                                        for (List c : customerList) {
                                    %>
                                    <tr>
                                        <td class="text-center" width="50px"><%= c.get(0)%></td>
                                        <td class="text-center" width="70px"><%= c.get(1)%></td>
                                        <td class="text-center" width="90px"><%= c.get(2)%></td>
                                        <td class="text-center" width="300px"><%= c.get(3)%></td>
                                        <td class="text-center" width="300px"><%= c.get(9)%></td>
                                        <%
                                            address = c.get(5).toString();
                                            if (!(c.get(6).toString().trim().equals(""))) {
                                                address += "," + c.get(6).toString();
                                                if (!(c.get(7).toString().trim().equals(""))) {
                                                    address += "," + c.get(7).toString().trim();
                                                    if (!(c.get(8).toString().trim().equals(""))) {
                                                        address += "," + c.get(8).toString().trim();
                                                    }
                                                }
                                            }
                                        %>
                                        <td class="text-center"><%=address%></td>
                                        <%
                                            if (type.equals("customer")) {
                                        %>
                                        <td class="text-center"><button type="button" class="btn btn-primary btn-xs" data="load" data-load="load/teller/customerDetails.jsp" data-param="cCIFNo=<%= c.get(1)%>">Select</button></td>
                                        <%
                                        } else if (type.equals("loan")) {
                                        %>
                                        <td class="text-center"><button type="button" class="btn btn-primary btn-xs" data="load" data-load="load/loan/loanDiteils.jsp" data-param="cCIFNo=<%= c.get(1)%>">Select</button></td>
                                        <%
                                        } else if (type.equals("pawn")) {
                                        %>
                                        <td class="text-center"><button type="button" class="btn btn-primary btn-xs" data="load" data-load="load/pawning/pawningDiteils.jsp" data-param="cCIFNo=<%= c.get(1)%>">Select</button></td>
                                        <%
                                            }
                                        %>

                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                            <!--</ul>-->
                            <!--</div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="bower_components/datatables.net/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="js/loadPage.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.content').css("display", "block");
        });
        $('#viewCustomer').DataTable();
    </script>
</section>