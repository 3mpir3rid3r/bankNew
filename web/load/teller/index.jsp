<%-- 
    Document   : customer
    Created on : Feb 23, 2018, 2:24:52 PM
    Author     : mmh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">ගිණුම් අංකය</h3>
                </div>
                <div class="box-body">
                    <!-- Date -->
                    <div class="col-md-7">
                        <div class="input-group">
                            <input class="form-control text-right convertSinhalaIskolaPotha" style="font-size: larger;font-weight: bolder" autocomplete="off" placeholder="ගිණුම් අංකය" maxlength="15" name="accountNumber" id="accountNumber" type="text">
                            <span class="input-group-btn">
                                <button class="btn btn-info btn-flat" type="submit"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right">පා.ලි. අංකය : </label>
                            <label class="col-md-6 input-sm" name="cCIFNo" id="cCIFNo"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right" style="margin-top: -15px">සාමාජික අංකය : </label>
                            <label class="col-md-6 input-sm" style="margin-top: -15px" name="cMemberShipNo" id="cMemberShipNo"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right" style="margin-top: -15px"> ජැ.හැ. අංකය : </label>
                            <label class="col-md-6 input-sm" name="cNICNo" style="margin-top: -15px" id="cNICNo"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 input-sm text-right" style="margin-top: -15px">භාවිත නම : </label>
                            <label class="col-md-6 input-sm" name="cUseName" style="margin-top: -15px" id="cUseName"></label>
                        </div>
                    </div>
                    <!-- /.form group -->
                </div>
                <!-- /.box-body -->
            </div>
        </div>
        <div class="col-md-3">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Date picker</h3>
                </div>
                <div class="box-body" >
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right">පා.ලි. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cCIFNo" id="cCIFNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">සාමාජික අංකය : </label>
                        <label class="col-md-6 input-sm" style="margin-top: -15px" name="cMemberShipNo" id="cMemberShipNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px"> ජැ.හැ. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cNICNo" style="margin-top: -15px" id="cNICNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">භාවිත නම : </label>
                        <label class="col-md-6 input-sm" name="cUseName" style="margin-top: -15px" id="cUseName"></label>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>  
    </div>
    <div class="row">
        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 5px">
                            <div id="depositTable_wrapper" class="dataTables_wrapper no-footer">
                                <div id="depositTable_filter" class="dataTables_filter">
                                    <label>Search:<input class="" placeholder="" aria-controls="depositTable" type="search"></label>
                                </div>
                                <div class="dataTables_scroll">
                                    <div class="dataTables_scrollHead" style="overflow: hidden; position: relative; border: 0px none; width: 100%;">
                                        <div class="dataTables_scrollHeadInner" style="box-sizing: content-box; width: 793px; padding-right: 0px;">
                                            <table class="cell-border compact dataTable no-footer" role="grid" style="margin-left: 0px; width: 793px;" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr style="background-color:  #dbc59e;" role="row">
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px;"></th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 45px;">හවුල්</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 101px;">ගිණුම් අංකය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 54px;">වර්ගය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 56px;">ශේෂය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 125px;">ගතහැකි ශේෂය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 79px;">රැඳවු මුදල</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 102px;">රැඳවු පොළිය</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div></div>
                                    <div class="dataTables_scrollBody" style="overflow: auto; height: 145px; width: 100%;">
                                        <table id="depositTable" class="cell-border compact dataTable no-footer" role="grid" style="width: 793px;" cellspacing="0"><thead>
                                                <tr style="background-color: rgb(219, 197, 158); height: 0px;" role="row">
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">

                                                        </div>
                                                    </th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;"></div></th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;"></div></th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">

                                                        </div>
                                                    </th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 3px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;"></div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 45px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">හවුල්</div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 101px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">ගිණුම් අංකය</div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 54px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">වර්ගය</div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 56px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">ශේෂය</div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 125px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">ගතහැකි ශේෂය</div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 79px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">රැඳවු මුදල</div></th><th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 102px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;"><div class="dataTables_sizing" style="height:0;overflow:hidden;">රැඳවු පොළිය</div></th></tr>
                                            </thead>

                                            <tbody>

                                                <tr class="odd"><td colspan="12" class="dataTables_empty" valign="top">No data available in table</td></tr></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>    
                        <div class="col-md-12" style="margin-top: 5px">
                            <div id="loanTable_wrapper" class="dataTables_wrapper no-footer">
                                <div id="loanTable_filter" class="dataTables_filter">
                                    <label>Search:<input class="" placeholder="" aria-controls="loanTable" type="search"></label>
                                </div>
                                <div class="dataTables_scroll">
                                    <div class="dataTables_scrollHead" style="overflow: hidden; position: relative; border: 0px none; width: 100%;">
                                        <div class="dataTables_scrollHeadInner" style="box-sizing: content-box; width: 821px; padding-right: 0px;">
                                            <table class="cell-border compact dataTable no-footer" role="grid" style="margin-left: 0px; width: 821px;" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr style="background-color: #dbc59e" role="row">
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 0px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 0px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 0px;"></th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 0px;"></th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 75px;">ණය අංකය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 62px;">ණය නම</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 59px;">කාරණය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 88px;">අනුමත දිනය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 85px;">අනුමත මුදල</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 69px;">පොළී.අනු</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 47px;">ශේෂය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 80px;">මුලු පොළිය</th>
                                                        <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 22px;">දින</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="dataTables_scrollBody" style="overflow: auto; height: 145px; width: 100%;">
                                        <table id="loanTable" class="cell-border compact dataTable no-footer" role="grid" style="width: 821px;" cellspacing="0">
                                            <thead>
                                                <tr style="background-color: rgb(219, 197, 158); height: 0px;" role="row">
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px; width: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;"></div>
                                                    </th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px; width: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;"></div></th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px; width: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;"></div></th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px; width: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;"></div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 75px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">ණය අංකය</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 62px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">ණය නම</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 59px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">කාරණය</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 88px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">අනුමත දිනය</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 85px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">අනුමත මුදල</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 69px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">පොළී.අනු</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 47px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">ශේෂය</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 80px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">මුලු පොළිය</div></th>
                                                    <th class="text-center sorting_disabled" rowspan="1" colspan="1" style="width: 22px; padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px;">
                                                        <div class="dataTables_sizing" style="height:0;overflow:hidden;">දින</div></th>
                                                </tr>
                                            </thead>

                                            <tbody>

                                                <tr class="odd">
                                                    <td colspan="13" class="dataTables_empty" valign="top">No data available in table</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
        <div class="col-md-3">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Date picker</h3>
                </div>
                <div class="box-body" >
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right">පා.ලි. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cCIFNo" id="cCIFNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">සාමාජික අංකය : </label>
                        <label class="col-md-6 input-sm" style="margin-top: -15px" name="cMemberShipNo" id="cMemberShipNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px"> ජැ.හැ. අංකය : </label>
                        <label class="col-md-6 input-sm" name="cNICNo" style="margin-top: -15px" id="cNICNo"></label>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6 input-sm text-right" style="margin-top: -15px">භාවිත නම : </label>
                        <label class="col-md-6 input-sm" name="cUseName" style="margin-top: -15px" id="cUseName"></label>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>