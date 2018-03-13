<%-- 
    Document   : load
    Created on : Nov 20, 2017, 12:39:43 PM
    Author     : mmh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.nbs.controller.referenceData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("user") == null) {
       response.sendRedirect("../../index.jsp");
    } else {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        List outPut = new ArrayList<Object>();
        List searchMultipleResults = new referenceData().viewReferenceData(6, 2);
        if (searchMultipleResults != null) {
%>
<style>
    #mytable td{
        padding: 0px;
        vertical-align: inherit;
        line-height: normal;
    }
</style>
<section class="content">
    <h3>තත්වය</h3>
    <hr>
    <div class="row container-fluid">
        <button id="addNew" type="button" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-plus"></span> Add New</button>
        <button disabled id="delete" type="button" class="btn btn-danger btn-sm "><span class="glyphicon glyphicon-trash"></span> Delete Item</button>
    </div>
    <div class="row container-fluid collapse" id="addItem" style="padding-top: 25px;">
        <form id="add" class="form-horizontal" action="managementServlet?id=5" method="post">
            <div id="numberHolder" class="form-group" hidden>
                <label class="control-label col-sm-2 " >අංකය:</label>
                <div class="col-sm-10">          
                    <input readonly type="text" class="form-control" id="number" placeholder="අංකය" name="catagory">
                </div>
            </div>
            <div id="catagoryHolder" class="form-group">
                <label class="control-label col-sm-2" >වර්ගය:</label>
                <div class="col-sm-10">          
                    <input type="text" class="form-control text-capitalize" id="catagory" placeholder="වර්ගය ඇතුලත් කරන්න" name="catagory">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button id="submit" type="submit" class="btn btn-default">Save</button>
                    <button onclick="$('#addItem').slideUp();" class="btn btn-default">Cancel</button>
                    <label id="addMessege" class="control-label" style="float: right;" hidden>message</label>
                </div>
            </div>
        </form> 
    </div>
</div>

<div class="table-responsive table-striped">
    <table id="mytable" class="table table-bordred table-striped">
        <thead style="vertical-align: central;">
        <th><input value="0" type="checkbox" id="checkall"/></th>
        <th>අංකය</th>
        <th>වර්ගය</th>
        <th>වෙනස් කිරිම</th>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < searchMultipleResults.size(); i++) {
                    outPut = (List) searchMultipleResults.get(i);
            %>
            <tr>
                <td style="width: 20px;padding-left: 8px;"><input value="<%=outPut.get(0).toString().trim()%>"  type="checkbox" class="checkthis" /></td>
                <td><%=outPut.get(0).toString().trim()%></td>
                <td><%=outPut.get(1).toString().trim()%></td>
                <td style="width: 100px;" class="text-center edit"><p data-placement="top" data-toggle="tooltip" title="වෙනස් කිරිම"><button class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
            </tr>
            <%
                }
            } else {

            %>
            <tr>
                <td style="width: 20px;padding-left: 8px;">No data</td>
                <td>No data</td>
                <td>No data</td>
                <td style="width: 100px;" class="text-center">No data</td>
            </tr>
            <%}%>
        </tbody>
    </table>
    <div class="clearfix"></div>
    <ul class="pagination pull-right">
        <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
        <li class="active"><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
    </ul>
</section>
<script type="text/javascript">
    $(document).ready(function () {
        $("#mytable #checkall").click(function () {
            if ($("#mytable #checkall").is(':checked')) {
                $("#mytable input[type=checkbox]").each(function () {
                    $(this).prop("checked", true);
                });
                $('#delete').removeAttr('disabled');
            } else {
                $("#mytable input[type=checkbox]").each(function () {
                    $(this).prop("checked", false);
                });
                $('#delete').attr('disabled', "");
            }
        });

        $("[data-toggle=tooltip]").tooltip();
    });
</script>
<script>
    $(document).ready(function () {
        $('td.edit').on('click', function () {
            var row = $(this).parent().parent().children().index($(this).parent());
            $('#numberHolder').removeAttr('hidden');
            $('#addItem').slideDown();
            $('#number').val($('#mytable tr:eq(' + (row + 1) + ') td:eq(1)').text());
            $('#catagory').val($('#mytable tr:eq(' + (row + 1) + ') td:eq(2)').text());
            $('#code').val($('#mytable tr:eq(' + (row + 1) + ') td:eq(3)').text());
            $('#submit').text('Update');

        });
    });
</script>
<script>
    $(document).ready(function () {
        $('#addNew').on('click', function () {
            $('#numberHolder').attr('hidden', "");
            $('#addItem').slideDown();
            $('#number').val('');
            $('#catagory').val('');
            $('#code').val('');
            $('#submit').text('Save');

        });
    });
</script>
<script>
    $(document).ready(function () {
        $('#delete').on('click', function () {
            var cBox = [];
            $('#mytable input[class="checkthis"]:checked').each(function () {
                cBox.push($(this).val());
            });
            $.ajax({
                type: 'post',
                url: 'managementServlet',
                data: {delete: cBox.toString()},
                success: function (data) {
                    alert(data);
                },
                error: function (data) {
                    alert('fail');
                },
            });
            e.preventDefault();
        });
    });
</script>
<script>
    var frm = $('#add');
    frm.submit(function (e) {
        e.preventDefault();
        $.ajax({
            type: frm.attr('method'),
            url: frm.attr('action'),
            data: frm.serialize(),
            success: function (data) {
                $('#addMessege').html(data);
                $('#addMessege').removeAttr('hidden');
                setTimeout(function () {
                    $('#addMessege').attr('hidden', "");
                }, 2000);
                $('#content').load('customerCatagory.jsp');
            },
            error: function (data) {
                alert('fail');
            }
        });
    });
</script>
<script>
    $(document).ready(function () {
        $('#mytable input[class="checkthis"]').on('click', function () {
            if ($('#mytable input[class="checkthis"]').is(':checked')) {
                $('#delete').removeAttr('disabled');
            } else {
                $('#delete').attr('disabled', "");
            }
        });
    });
</script>

<%}%>