<%-- 
    Document   : commonLedger
    Created on : Mar 6, 2018, 3:54:41 PM
    Author     : mmh
--%>

<%@page import="com.nbs.worker.Server"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>



<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" style="width: 1000px;">



<script type="text/javascript">

    function searchFunction(comId, rid) {
        var input, filter, table, tr, td, i;
        input = document.getElementById(comId);
        filter = input.value.toUpperCase();
        table = document.getElementById("ledger_table");
        tr = table.getElementsByTagName("tr");
//                tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[rid];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>

<section class="content-header">
    <h1>
        Accounts -
        <small>Chart of account</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href=""><i class="fa fa-home"></i> Chart of account</a></li>

        <li class="active"></li>
    </ol>
</section>

<section class="content">
    <div class="row bg-top" style="margin-bottom:-20px">
        <div class="col-md-12">
            <div class="box box-info bg-color" style="margin-bottom:10px">
                <div class="box-body">
                    <div class="row">
                        


                        <div class="col-md-12 bg-top">
                            <table class="table table-bordered table-hover" id="ledger_table">
                                <thead>
                                    <tr><th class="text-center" width="50px"><input style="width: 100%;height: 100%;border-radius: 0px;" id="ledid1" onkeyup="searchFunction('ledid1', 0);" type="text"></th>
                                        <th class="text-center" width="50px"><input style="width: 100%;height: 100%;border-radius: 0px;" id="ledid2" onkeyup="searchFunction('ledid2', 1);" type="text"></th>
                                        <th class="text-center" width="80px"><input style="width: 100%;height: 100%;border-radius: 0px;" id="ledid3" onkeyup="searchFunction('ledid3', 2);" type="text"></th>
                                        <th class="text-center" width="115px"><input style="width: 100%;height: 100%;border-radius: 0px;" id="ledid4" onkeyup="searchFunction('ledid4', 3);" type="text"></th>
                                        <th class="text-center" width="115px"><input style="width: 100%;height: 100%;border-radius: 0px;" id="ledid5" onkeyup="searchFunction('ledid5', 4);" type="text"></th>
                                        <th class="text-center" width="5px"></th>
                                    </tr></thead>    
                                <thead style="background-color: #5bc0de">
                                    <tr><th class="text-center" width="50px"> ID</th>
                                        <th class="text-center" width="50px">Act4 ID</th>
                                        <th class="text-center" width="80px">Acc No</th>
                                        <th class="text-center" width="115px">Description</th>
                                        <th class="text-center" width="115px">Description(Eng)</th>
                                        <th class="text-center" width="5px"></th>

                                    </tr></thead>    
                                <tbody id="tbody_ledger">

                                    <%
                                        List inn = new ArrayList();
                                        inn.add(1);
                                        inn.add("");
                                        inn.add("");
                                        inn.add("");
                                        inn.add("");
                                        inn.add("");
                                        inn.add("");
                                        inn.add(1);
                                        List outn = null;

                                        List searchMultipleResults1 = new Server().searchMultipleResults(inn, "ssp_bank_FindData_Act_ChartOfAcctL5", 8);

                                        if (searchMultipleResults1 != null) {

                                            for (int i = 0; i < searchMultipleResults1.size(); i++) {
                                                outn = (List) searchMultipleResults1.get(i);
                                    %>

                                    <tr>
                                        <td style="font-size: 12px;"><%= outn.get(0).toString()%></td>
                                        <td style="font-size: 12px;"><%= outn.get(1).toString()%></td>
                                        <td style="font-size: 12px;"><%= outn.get(2).toString()%></td>
                                        <td style="font-size: 12px;font-family: AMALEE;font-size: 15px;"><%= outn.get(3).toString()%></td>
                                        <td style="font-size: 12px;"><%= outn.get(7).toString()%></td>

                                        <td>
                                            <a href="../GetSelectedAct4Detail?actid=4&amp;dep=off" class="btn btn-default btn-xs">Select</a>
                                        </td>
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
            </div>
        </div>
    </div>
    <script src="bower_components/datatables.net/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="js/loadPage.js" type="text/javascript"></script>
    <script type="text/javascript">
            $("#ledger_table").DataTable();
    </script>
</section>
                                    
                                    
                                    
    </div></div>
