<%-- 
    Document   : customer
    Created on : Feb 23, 2018, 2:24:52 PM
    Author     : mmh
--%>

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
    <div class="row bg-top" style="height:auto">
        <form class="form-horizontal" action="../NewDepDopositTypesServlet" method="post" name="saving" onsubmit="validateNewSavingProtype(this);
                return false;">

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
                                <h3 class="box-title">තැම්පත් වර්ගයන්ගේ සාරාංශය</h3>
                            </div>
                            <div class="box-body">
                                <table id="table" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>අංකය</th>
                                            <th>තැම්පත් කේතය</th>
                                            <th>තැම්පත් නම</th>
                                            <th>තැම්පත් නම(සිංහල)</th>
                                            <th>තැම්පත් වර්ගය</th>
                                            <th>පොළියය</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>100</td>
                                            <td>MEMBER SAVINGS</td>
                                            <td>idudcsl b;+reus</td>
                                            <td>SAVINGS</td>
                                            <td>4.00</td>
                                            <td><button type="button" onclick="selectBtnAction(1)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>
                                        <tr>
                                            <td >2</td>
                                            <td>101</td>
                                            <td>NON MEMBER SAVINGS</td>
                                            <td>idudcsl fkdjk b; reus</td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(2)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >3</td>
                                            <td>102</td>
                                            <td>SCHOOL</td>
                                            <td>mdi,a b;+reus</td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(3)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >4</td>
                                            <td>103</td>
                                            <td>RU-BANK PLUS</td>
                                            <td>rEnEkala ma,ia</td>
                                            <td>SAVINGS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(4)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >5</td>
                                            <td>104</td>
                                            <td>DANAYOJANA</td>
                                            <td>OKfhdack b;+reus</td>
                                            <td>SAVINGS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(5)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >6</td>
                                            <td>105</td>
                                            <td>MEMBER SAVINGS - INACTIVE</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(6)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >7</td>
                                            <td>106</td>
                                            <td>SUREKUM</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(7)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >8</td>
                                            <td>107</td>
                                            <td>SAMURDI</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(8)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >9</td>
                                            <td>108</td>
                                            <td>SOCIEATY</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(9)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >10</td>
                                            <td>109</td>
                                            <td>MIYAGIYA ACCOUNTS</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(10)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >11</td>
                                            <td>110</td>
                                            <td>BALA WAYAS</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(11)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >12</td>
                                            <td>111</td>
                                            <td>DUPUTHU</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(12)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >14</td>
                                            <td>112</td>
                                            <td>LADARU</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(14)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >15</td>
                                            <td>113</td>
                                            <td>RAN THILINA</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(15)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >16</td>
                                            <td>114</td>
                                            <td>RANTHILINA FIX DIPOSITS</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >16.50</td>
                                            <td ><button type="button" onclick="selectBtnAction(16)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >17</td>
                                            <td>115</td>
                                            <td>NON MEMBER SAVINGS - INACTIVE</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(17)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >18</td>
                                            <td>116</td>
                                            <td>FIX DIPOSITES</td>
                                            <td></td>
                                            <td>FIXED DIPOSITS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(18)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >19</td>
                                            <td>117</td>
                                            <td>OFFCIAL ACCOUNT - (AYA LABEEMATA)</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >0.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(19)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >20</td>
                                            <td>118</td>
                                            <td>YOUN WASANA SAVINGS</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(20)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >21</td>
                                            <td>119</td>
                                            <td>YOUN WASANA FIXED DEPOSITS</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(21)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >22</td>
                                            <td>120</td>
                                            <td>DUPUTHU-3800</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(22)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >23</td>
                                            <td>121</td>
                                            <td>RANLIYA SUPER LADY</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(23)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >24</td>
                                            <td>122</td>
                                            <td>KANTHA</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(24)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >25</td>
                                            <td>123</td>
                                            <td>NEW YEAR FIX DIPOSITES</td>
                                            <td></td>
                                            <td>SAVINGS</td>
                                            <td >6.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(25)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >26</td>
                                            <td>11</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>SAVINGS</td>
                                            <td >12.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(26)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >27</td>
                                            <td>11</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>SAVINGS</td>
                                            <td >12.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(27)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >28</td>
                                            <td>11</td>
                                            <td>11</td>
                                            <td>11</td>
                                            <td>FIXED DIPOSITS</td>
                                            <td >11.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(28)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >29</td>
                                            <td></td>
                                            <td>asd</td>
                                            <td>asd</td>
                                            <td>CERTIFICATE SAVINGS</td>
                                            <td >11.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(29)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >30</td>
                                            <td>111</td>
                                            <td>111</td>
                                            <td>mÃ?.Kl</td>
                                            <td>FIXED DIPOSITS</td>
                                            <td >111.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(30)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >31</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>CERTIFICATE SAVINGS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(31)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >32</td>
                                            <td>999</td>
                                            <td>dfdd</td>
                                            <td>ddddddddfffffffffffff</td>
                                            <td>SAVINGS</td>
                                            <td >4.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(32)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >33</td>
                                            <td>qqq</td>
                                            <td>dddddddddddd</td>
                                            <td>66666</td>
                                            <td>INVESTMENT SAVINGS</td>
                                            <td >5.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(33)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >34</td>
                                            <td>dfd</td>
                                            <td>sdf</td>
                                            <td>sddfdf</td>
                                            <td>INVESTMENT SAVINGS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(34)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >35</td>
                                            <td>334</td>
                                            <td>aaaa</td>
                                            <td>gggg</td>
                                            <td>INVESTMENT SAVINGS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(35)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >36</td>
                                            <td>445</td>
                                            <td>eeeeeeeb yyyy</td>
                                            <td>eee</td>
                                            <td>INVESTMENT SAVINGS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(36)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >37</td>
                                            <td>343</td>
                                            <td>ttt888888</td>
                                            <td>yyyyyy</td>
                                            <td>FIXED DIPOSITS</td>
                                            <td >3.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(37)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >38</td>
                                            <td>232</td>
                                            <td>ttt</td>
                                            <td>gggggggggggg</td>
                                            <td>SAVINGS</td>
                                            <td >3.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(38)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >39</td>
                                            <td>233</td>
                                            <td>ddddd</td>
                                            <td>rrrrrr</td>
                                            <td>FIXED DIPOSITS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(39)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >40</td>
                                            <td>344</td>
                                            <td>ggggg</td>
                                            <td>eeeee</td>
                                            <td>SAVINGS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(40)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>

                                        <tr>
                                            <td >41</td>
                                            <td>334</td>
                                            <td>wwwwrrr</td>
                                            <td>ssssddddd</td>
                                            <td>SAVINGS</td>
                                            <td >1.00</td>
                                            <td ><button type="button" onclick="selectBtnAction(41)" class="btn btn-primary btn-xs">Select</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/.section A-->
                    <!--/.section B-->
                    <div id="sectionB" class="tab-pane fade">
                        <div class="panel panel-default" >
                            <div class="panel-heading">
                                <h6 class="panel-title">
                                    මුලික තොරතුරු
                                </h6>
                            </div>
                            <div class="panel-body" >
                                <div class="list-group col-lg-12" id="fontSize">
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 input-sm">කේතය :</label>
                                        <div class="col-md-3">
                                            <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="කේතය" maxlength="3" name="sysCode" id="sysCode" value="" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 input-sm">තැම්පත් වර්ගය :</label>
                                        <div class="col-sm-3">
                                            <select class="form-control my-input input-sm" name="nDepCatID" id="nDepCatID">
                                                <option value="0">-තෝරන්න-</option>

                                                <option class="convertSinhalaIskolaPotha" value="1">SAVINGS</option>

                                                <option class="convertSinhalaIskolaPotha" value="2">FIXED DIPOSITS</option>

                                                <option class="convertSinhalaIskolaPotha" value="3">CERTIFICATE SAVINGS</option>

                                                <option class="convertSinhalaIskolaPotha" value="4">INVESTMENT SAVINGS</option>

                                            </select>  

                                        </div>

                                        <div class="checkbox col-sm-3">

                                            <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input id="bActive" name="bActive" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> ක්‍රියාකාරී ගිණුම් වර්ග

                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 input-sm">තැම්පතේ නම :</label>
                                        <div class="col-md-6">
                                            <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="තැම්පතේ නම" maxlength="59" name="cDepName" id="cDepName" value="" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 input-sm">තැම්පතේ නම(සිංහල) :</label>
                                        <div class="col-md-6">
                                            <input class="form-control input-sm convertSinhalaAmali" maxlength="59" id="cDepNameSin" name="cDepNameSin" value="" onkeyup="keyup1(event, 'cDepNameSin')" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 input-sm">තැම්පතේ නම(දෙමළ) :</label>
                                        <div class="col-md-6">
                                            <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="තැම්පතේ නම(දෙමළ)" maxlength="59" name="cDepNameTamil" id="cDepNameTamil" value="" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group col-lg-12" id="fontSize">
                                    <div class="box-group" id="accordion">
                                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                        <div class="panel box box-info bg-bottom bg-panelcolor">
                                            <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="">
                                                <h4 class="box-title logo" style="font-size: 17px">
                                                    <strong>
                                                        ගිණුම පවත්වගෙන යාමට උපදෙස් 
                                                    </strong>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="false">
                                                <div class="box-body bg-color">
                                                    <div class="row">
                                                        <div class="col-md-12 bg-top">
                                                            <div class="panel-group" id="account">
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading" style="height:30px">
                                                                        <h5 class="panel-title" style="font-size:15px">
                                                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseAccount">
                                                                                <b>ගිණුම් ආරම්භක කිරීමේ උපදෙස්</b>
                                                                            </a>
                                                                        </h5>
                                                                    </div>
                                                                    <div id="collapseAccount" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="form-group bg-top">
                                                                                <div class="col-sm-5 " style="padding:2px">
                                                                                    <div class="panel panel-primary">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title">
                                                                                                හිමිකම
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" >
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-6 input-sm">අවම හවුල්කරයන් :</label>
                                                                                                <div class="col-md-6">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" name="nMinParticipant" id="nMinParticipant" value="0" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-6 input-sm">උපරිම හවුල්කරයන් :</label>
                                                                                                <div class="col-md-6">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" name="nMaxParticipant" id="nMaxParticipant" value="0" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-4" style="padding:2px">
                                                                                    <div class="panel panel-primary">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title">
                                                                                                වයස සීමාවන්
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" >
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-6 input-sm">අවම වයස් සීමා :</label>
                                                                                                <div class="col-md-6">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" id="nMinAge" name="nMinAge" value="0" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-6 input-sm">උපරිම වයස් සීමා :</label>
                                                                                                <div class="col-md-6">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" id="nMaxAge" name="nMaxAge" value="0" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3" style="padding:2px">


                                                                                    <div class="panel panel-primary">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title">
                                                                                                ස්ත්‍රි/පුරුෂ 
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body" >

                                                                                            <div class="col-md-12" >
                                                                                                <div class="radio">
                                                                                                    <label>
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nOperatingGenderType" id="nOperatingGenderType1" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        පුරුෂ පමනයි
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label>
                                                                                                        <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nOperatingGenderType" id="nOperatingGenderType2" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        ස්ත්‍රි පමනයි
                                                                                                    </label>
                                                                                                </div>
                                                                                                <div class="radio">
                                                                                                    <label>
                                                                                                        <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nOperatingGenderType" id="nOperatingGenderType3" value="3" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        දෙවර්ගයම
                                                                                                    </label>
                                                                                                </div>
                                                                                            </div>




                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-sm-7 bg-top" style="padding:2px">
                                                                                    <div class="panel panel-primary">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title">
                                                                                                මුලික තැන්පත්
                                                                                            </h6>
                                                                                        </div>
                                                                                        <div class="panel-body">
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-6 input-sm">ගිනුමක් ආරම්භයට අවම මුදල :</label>
                                                                                                <div class="col-md-6">
                                                                                                    <input min="0" class="form-control input-sm text-right convertSinhalaIskolaPotha number" maxlength="20" name="nMinAmtStart" id="nMinAmtStart" value="" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group" >
                                                                                                <label class="control-label col-sm-6 input-sm">ගිනුමක් නඩත්තුවට අවම මුදල :</label>
                                                                                                <div class="col-md-6">
                                                                                                    <input min="0" class="form-control input-sm text-right convertSinhalaIskolaPotha number" maxlength="20" name="nMinAmtContinue" id="nMinAmtContinue" value="" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-5 bg-top" style="padding:2px">
                                                                                    <div class="panel panel-primary">
                                                                                        <div class="panel-heading" style="height:30px">
                                                                                            <h6 class="panel-title">
                                                                                                මුලික තැන්පත් 
                                                                                            </h6>
                                                                                        </div>


                                                                                        <div class="col-md-12" >
                                                                                            <br>

                                                                                            <div class="checkbox">
                                                                                                <label>
                                                                                                    <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm number" id="bInitialDepCash" name="bInitialDepCash" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    මුදල්
                                                                                                </label>
                                                                                            </div>


                                                                                            <div class="checkbox">
                                                                                                <label>
                                                                                                    <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" id="bInitialDepChque" name="bInitialDepChque" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    House Cheque
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="checkbox">
                                                                                                <label>
                                                                                                    <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" id="bInitialDepFTrnans" name="bInitialDepFTrnans" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    ස්ථිර/සහතික තැන්පතු වලින් මුදල් හුවමරු
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <div class="checkbox col-sm-12" style="text-align: center">
                                                                                <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input id="bMultipleAcct" name="bMultipleAcct" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> එක් ගනුදෙනු කරුවෙකුට ගිනුම් කිහිපයක් අරම්භ කිරිමට අවසර දිම
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="btn btn-info btn-sm bg-top" aria-expanded="false">
                                                        Next  
                                                    </a>
                                                </div>  
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel box box-info bg-bottom bg-panelcolor">
                                        <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                                            <h4 class="box-title logo" style="font-size: 17px">
                                                <strong>
                                                    ක්‍රියාත්මක කිරිමට උපදෙස්
                                                </strong>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse " aria-expanded="false">
                                            <div class="box-body bg-color">
                                                <div class="row">
                                                    <div class="col-md-12 bg-top">
                                                        <div class="panel-group" id="account">
                                                            <div class="panel panel-default">
                                                                <div class="panel-heading" style="height:30px">
                                                                    <h5 class="panel-title" style="font-size:15px">
                                                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseDeposit">
                                                                            <b>තැන්පත්/ආපසු ගැනිමෙ උපදෙස්</b>
                                                                        </a>
                                                                    </h5>
                                                                </div>
                                                                <div id="collapseDeposit" class="panel-collapse collapse in">
                                                                    <div class="panel-body">
                                                                        <div class="form-group bg-top" >
                                                                            <div class="col-sm-7 " style="padding:2px">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading" style="height:30px">
                                                                                        <h6 class="panel-title" style="font-size:15px">
                                                                                            තැන්පත්
                                                                                        </h6>
                                                                                    </div>
                                                                                    <div class="panel-body">


                                                                                        <div class="col-md-12" >
                                                                                            <div class="radio">
                                                                                                <label class="col-md-4 input-sm">
                                                                                                    <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="optionsDepTypes" id="depRadio1" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    සමන්‍ය තැන්පත් 
                                                                                                </label>
                                                                                                <label class="input-sm col-md-8">- ඕනෑම අවස්ථාවක මුදල් තැන්පත් කිරිමට</label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-4 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="optionsDepTypes" id="depRadio2" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    ස්ථාවර තැන්පත් 
                                                                                                </label>
                                                                                                <label class="input-sm col-md-8">- එක් අවස්ථාවක පමණක් මුදල් තැන්පත් කල යුතුය</label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-4 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="optionsDepTypes" id="optionsRadios3" value="3" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    ධනයෝජන තැන්පත් 
                                                                                                </label>
                                                                                                <label class="input-sm col-md-8">- ගිවිසුම්ගත කාලයකදි මුදල් තැන්පත් කල යුතුය</label>
                                                                                            </div>
                                                                                        </div>



                                                                                        <div class="form-group" >
                                                                                            <label class="control-label col-sm-4 input-sm"></label>
                                                                                            <label class="control-label col-sm-4 input-sm">- පවත්වගෙන යාමට අවම මාස</label>
                                                                                            <div class="col-md-4">
                                                                                                <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" id="nMinMonths" name="nMinMonths" value="0" type="number">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group" >
                                                                                            <label class="control-label col-sm-4 input-sm"></label>
                                                                                            <label class="control-label col-sm-4 input-sm">- පවත්වගෙන යාමට උපරිම මාස</label>
                                                                                            <div class="col-md-4">
                                                                                                <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" id="nMaxMonths" name="nMaxMonths" value="0" type="number">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-5" style="padding:2px">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading" style="height:30px">
                                                                                        <h6 class="panel-title" style="font-size:15px">
                                                                                            ආපසු ගැනිම
                                                                                        </h6>
                                                                                    </div>
                                                                                    <div class="panel-body">
                                                                                        <div class="col-md-12">

                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" id="withdrowbox1" name="nWithdrawlsAllowed" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    ගිනුම සම්පූර්න වනතුරු මුදල් ආපසු ගනිමට නොහැක 
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" id="withdrowbox1" name="nWithdrawlsAllowed" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    ආපසු ගැනිමට ඉඩදිම 
                                                                                                </label>
                                                                                            </div>


                                                                                            <div class="form-group">
                                                                                                <label class="col-md-4 input-sm text-right">දින</label>
                                                                                                <div class="col-md-3">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="දින" name="nNoOfDays" id="nNoOfDays" value="0" type="number">
                                                                                                </div>
                                                                                                <label class="col-md-5 input-sm">පසුවට</label>
                                                                                            </div>
                                                                                            <div class="form-group" >
                                                                                                <label class="control-label col-sm-9 input-sm">පොළියට බලපෑමක් නොමැතිව මුදල් ගතහැකි වාරගනන</label>
                                                                                                <div class="col-md-3">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" id="nNoOfTimesPerMonth" name="nNoOfTimesPerMonth" value="0" type="number">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="control-label col-sm-9 input-sm">ආපසු ගැනිම සඳහා අවම වයස් සීමා(වර්ෂ)</label>
                                                                                                <div class="col-md-3">
                                                                                                    <input min="0" class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" id="nMinAgeLimitWithdrawls" name="nMinAgeLimitWithdrawls" value="0" type="number">
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
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6  bg-top">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-warning btn-sm" aria-expanded="false">
                                                            Back 
                                                        </a>
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="btn btn-info btn-sm" aria-expanded="true">
                                                            Next
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel box box-info bg-bottom bg-panelcolor">
                                        <div class=" box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="true">
                                            <h4 class="box-title logo" style="font-size: 17px">
                                                <strong>
                                                    පොලී ගනණය කිරිම
                                                </strong>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" aria-expanded="true">
                                            <div class="box-body bg-color">
                                                <div class="row">
                                                    <div class="col-md-12 bg-top">
                                                        <div class="panel-group" id="account">
                                                            <div class="panel panel-default">
                                                                <div class="panel-heading" style="height:30px">
                                                                    <h5 class="panel-title" style="font-size:15px">
                                                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseInterest">
                                                                            <b>පොළී අනුපාතය හා ගනනය කිරිමෙ උපදෙස්</b>
                                                                        </a>
                                                                    </h5>
                                                                </div>
                                                                <div id="collapseInterest" class="panel-collapse collapse in">
                                                                    <div class="panel-body">
                                                                        <div class="form-group bg-top">
                                                                            <div class="col-sm-12" style="text-align: center">
                                                                                <label class="control-label col-sm-4 input-sm">පොළී අනුපාතය :</label>
                                                                                <div class="col-md-3">
                                                                                    <input min="0" class="form-control input-sm text-right " id="nCurrentIntRate" name="nCurrentIntRate" value="" type="number">
                                                                                </div>
                                                                                <label class="control-label col-sm-1 input-sm text-left"> % වර්ෂයට</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group bg-top">
                                                                            <div class="col-sm-7 " style="padding:2px">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading" style="height:30px">
                                                                                        <h6 class="panel-title" style="font-size:15px">
                                                                                            පොළී ගණනය කිරිමේ ආකාර
                                                                                        </h6>
                                                                                    </div>
                                                                                    <div class="panel-body">

                                                                                        <div class="col-md-12">
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nIntCalMethodID" id="calRadios1" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    මෙම ගිනුමට පොළිය නොමැත
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nIntCalMethodID" id="calRadios2" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    පොළී ගණනය හා බැර කිරිම අතින් සිදුකෙරේ 
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nIntCalMethodID" id="optionsRadios3" value="3" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    උසස් ආකාරයට ණය ගෙවිම
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nIntCalMethodID" id="optionsRadios4" value="4" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    පොළිය ගණනය සරල එකතු කිරිමෙ ආකාරයට
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>




                                                                                        <div class="form-group">
                                                                                            <label class="control-label col-sm-4 input-sm text-right">ගණනය සෑම : </label>
                                                                                            <div class="col-md-8">
                                                                                                <select class="form-control my-input input-sm" name="nIntCalID" id="nIntCalID">
                                                                                                    <option value="0">-තෝරන්න-</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="1">NA</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="2">DAILY    -   EVERY DAY</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="3">MONTHLY  -   EVERY LAST DAY OF THE MONTH</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="4">MONTHLY  -   MONTH FROM THE DATE OF ACCOUNT OPENED</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="5">QUOTALY  -   EVERY LAST DAY OF THE QUOTA</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="6">YEARLY   -   EVERY LAST DAY OF THE YEAR</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="7">YEARLY   -   LAST DAY OF THE ACCOUNTING YEAR</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="8">YEARLY   -   YEAR FROM THE DATE OF ACCOUNT OPENED </option>

                                                                                                </select>

                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label class="control-label col-sm-4 input-sm text-right">ගිනුමට බැරවිම සෑම : </label>
                                                                                            <div class="col-md-8">
                                                                                                <select class="form-control my-input input-sm" name="nIntPayID" id="nIntPayID">
                                                                                                    <option value="0">-තෝරන්න-</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="1">NA</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="2">DAILY    -   EVERY DAY</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="3">MONTHLY  -   EVERY LAST DAY OF THE MONTH</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="4">MONTHLY  -   MONTH FROM THE DATE OF ACCOUNT OPENED</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="5">QUOTALY  -   EVERY LAST DAY OF THE QUOTA</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="6">YEARLY   -   EVERY LAST DAY OF THE YEAR</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="7">YEARLY   -   LAST DAY OF THE ACCOUNTING YEAR</option>

                                                                                                    <option class="convertSinhalaIskolaPotha" value="8">YEARLY   -   YEAR FROM THE DATE OF ACCOUNT OPENED </option>

                                                                                                </select>

                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-5" style="padding:2px">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading" style="height:30px">
                                                                                        <h6 class="panel-title" style="font-size:15px">
                                                                                            පොළී ගණනය කිරිමේ නීති
                                                                                        </h6>
                                                                                    </div>
                                                                                    <div class="panel-body">
                                                                                        <div class="form-group">
                                                                                            <label class="control-label col-sm-6 input-sm text-right">පොළී ගණනයට අවම මුදල : </label>
                                                                                            <div class="col-md-6">
                                                                                                <input min="0" class="form-control input-sm text-right convertSinhalaIskolaPotha number" maxlength="25" id="nMinAmtIntCal" name="nMinAmtIntCal" value="" type="number">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label class="control-label col-sm-6 input-sm text-right">බැර කිරිමට අවම පොළී මුදල : </label>
                                                                                            <div class="col-md-6">
                                                                                                <input min="0" class="form-control input-sm text-right convertSinhalaIskolaPotha number" style="font-size:15px;" maxlength="25" id="nMinAmtIntCR" name="nMinAmtIntCR" value="" type="number">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label class="col-sm-12 input-sm" style="color: #005f8d">පොළිය වැටයීම</label>
                                                                                        </div>


                                                                                        <div class="col-md-12" >
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal checked" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nInterestRoundMethod" id="optionsRadios1" value="1" checked="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    වැටයීම්  නැත
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nInterestRoundMethod" id="optionsRadios2" value="2" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    පොදු වැටයීම් 
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nInterestRoundMethod" id="optionsRadios3" value="3" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                    වැඩි අගයකට 10.20--&gt;11.00
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="radio">
                                                                                                <label class="col-md-12 input-sm">
                                                                                                    <div class="iradio_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" name="nInterestRoundMethod" id="optionsRadios4" value="4" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
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
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="btn btn-warning btn-sm" aria-expanded="true">
                                                            Back 
                                                        </a>
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" class="btn btn-info btn-sm" aria-expanded="true">
                                                            Next
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel box box-info bg-bottom bg-panelcolor">
                                        <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" class="collapsed" aria-expanded="true">
                                            <h4 class="box-title logo" style="font-size: 16px">
                                                <strong>
                                                    පොලී අනුපාත වෙනස් වූ ආකාරය 
                                                </strong>
                                            </h4>
                                        </div>
                                        <div id="collapseSeven" class="collapse " aria-expanded="true">
                                            <div class="box-body bg-color">
                                                <div class="row">
                                                    <div class="panel-body">
                                                        <div class="list-group col-lg-12" id="fontSize" style="padding: 0px">
                                                            <div class="zTreeDemoBackground left " style="">
                                                                <ul id="treeDemo" class="ztree" style="width: auto;height: 200px; ">
                                                                    <div class="table-responsive">
                                                                        <table class="table table-bordered" id="table-style" data-toggle="table" data-cache="false">
                                                                            <tbody><tr>
                                                                                    <th class="text-center" style="width:10px"> AAA</th>
                                                                                    <th class="text-center" style="width:100px"> AAA</th>
                                                                                    <th class="text-center"> AAA</th>

                                                                                </tr>

                                                                            </tbody></table>
                                                                    </div>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6  bg-top">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="btn btn-warning btn-sm" aria-expanded="false">
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
                                        <div class="box-header " data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed" aria-expanded="false">
                                            <h4 class="box-title logo" style="font-size: 17px">
                                                <strong>
                                                    පොදු ලෙජරයට ඇති සම්බන්ධතාවය
                                                </strong>
                                            </h4>
                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse" aria-expanded="false">
                                            <div class="box-body bg-color">
                                                <div class="row">
                                                    <div class="col-md-12 bg-top">
                                                        <div class="panel-group" id="account">
                                                            <div id="lala" class="panel panel-default">
                                                                <div class="panel-heading" style="height:30px">
                                                                    <h5 class="panel-title" style="font-size:15px">
                                                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseInterest">
                                                                            <b>ලෙජර සම්බන්ධතා</b>
                                                                        </a>
                                                                    </h5>
                                                                </div>

                                                                <div class="col-lg-12">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group bg-top">

                                                                            <label class="col-sm-2 input-sm text-left">මුල් මුදලේ </label>
                                                                            <div class="col-md-2 ">
                                                                                <input id="AAcctNoL5_1" name="AAcctNoL5_1" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                            </div>
                                                                            <div class="col-md-5">
                                                                                <input id="AAcctNoL5_1_name" name="AAcctNoL5_1_name" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" style="font-family: AMALEE;font-size: 15px;" type="text">
                                                                            </div>
                                                                            <div class="col-md-1 ">
                                                                                <a type="button" onclick="storeData(10)" class="btn btn-default btn-sm">...</a>
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <input class="form-control input-sm text-right convertSinhalaIskolaPotha number" placeholder="0" value="0" onkeypress="return event.charCode < 64" type="text">
                                                                                <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" name="nDepAcctLevelID4" value="null" type="hidden">

                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group ">
                                                                            <label class="col-sm-2 input-sm text-left">පොළී මුදලේ </label>

                                                                            <div class="col-md-2 ">
                                                                                <input id="AAcctNoL5_2" name="AAcctNoL5_2" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" type="text">
                                                                            </div>
                                                                            <div class="col-md-5 ">
                                                                                <input id="AAcctNoL5_2_name" name="AAcctNoL5_2_name" value="" class="form-control input-sm text-right convertSinhalaIskolaPotha" style="font-family: AMALEE;font-size: 15px;" type="text">
                                                                            </div>
                                                                            <div class="col-md-1 ">
                                                                                <button type="button" onclick="storeData(11)" class="btn btn-default btn-sm">...</button>
                                                                            </div>

                                                                            <div class="col-md-2">
                                                                                <input class="form-control input-sm text-right convertSinhalaIskolaPotha number" placeholder="0" value="0" onkeypress="return event.charCode < 64" type="text">
                                                                                <input class="form-control input-sm convertSinhalaIskolaPotha" placeholder="0" name="nIntAcctLevelID4" value="null" type="hidden">

                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>  
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6  bg-top">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" class="btn btn-warning btn-sm" aria-expanded="false">
                                                                Back 
                                                            </a>
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="btn btn-info btn-sm" aria-expanded="false">
                                                                Next
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>





                                        <div class="panel box box-info bg-bottom bg-panelcolor">
                                            <div class="box-header" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="collapsed" aria-expanded="false">
                                                <h4 class="box-title logo" style="font-size: 17px">
                                                    <strong>
                                                        වෙනත් තොරතුරු
                                                    </strong>
                                                </h4>
                                            </div>
                                            <div id="collapseSix" class="panel-collapse collapse" aria-expanded="false">
                                                <div class="box-body bg-color">
                                                    <div class="row">
                                                        <div class="col-md-12 bg-top">
                                                            <div class="panel-group" id="account">
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading" style="height:30px">
                                                                        <h5 class="panel-title" style="font-size:15px">
                                                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#account" href="#collapseInterest">
                                                                                <b>අකාර්ය ගණයට මරු කිරීම</b>
                                                                            </a>
                                                                        </h5>
                                                                    </div>
                                                                    <div id="collapseInterest" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="form-group bg-top">
                                                                                <div class="col-sm-4 " style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-body">
                                                                                            <div class="col-md-12">
                                                                                                <div class="checkbox">
                                                                                                    <label class="input-sm">
                                                                                                        <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false"><input class="input-sm" id="bChangeToInactive" name="bChangeToInactive" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                                                                                                        අකාර්ය ලෙස මාරු කිරිම
                                                                                                    </label>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="col-sm-1 input-sm"></label>
                                                                                                <label class="col-sm-11 input-sm">අකාර්ය ලෙස මාරු කල යුතු කාල සීමාව</label>
                                                                                            </div>
                                                                                            <div class="form-group" >
                                                                                                <label class="col-sm-1 input-sm bg-top"></label>
                                                                                                <div class="col-md-3 bg-top">
                                                                                                    <input min="0" class="form-control input-sm text-right convertSinhalaIskolaPotha" placeholder="0" id="nInacPeriod" name="nInacPeriod" value="0" type="number">
                                                                                                </div>
                                                                                                <div class="col-md-8 bg-top">
                                                                                                    <select class="form-control my-input input-sm" name="cInacPeriodType" id="cInacPeriodType">
                                                                                                        <option value="0">-තෝරන්න-</option>
                                                                                                        <option value="1">Day</option>
                                                                                                        <option value="2">Month</option>
                                                                                                        <option value="3">Year</option>
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-4 " style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-body">
                                                                                            <div class="col-md-12" >
                                                                                                <div class="checkbox">
                                                                                                    <label class="input-sm">
                                                                                                        <div class="icheckbox_minimal" style="position: relative;" aria-checked="false" aria-disabled="false">
                                                                                                            <input class="input-sm" name="bChangeToHimiNopa" id="bChangeToHimiNopa" style="position: absolute; opacity: 0;" type="checkbox">
                                                                                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                                                                                        </div>
                                                                                                        හිමිකම් නොපෑ ලෙජරයට මාරු කිරීම
                                                                                                    </label>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class="col-sm-1 input-sm"></label>
                                                                                                <label class="col-sm-11 input-sm">හිමිකම් නොපෑ ලෙජරයට කලයුතු කාල සීමාව</label>
                                                                                            </div>
                                                                                            <div class="form-group" >
                                                                                                <label class="col-sm-1 input-sm bg-top"></label>
                                                                                                <div class="col-md-3 bg-top">
                                                                                                    <input min="0" class="form-control input-sm text-right convertSinhalaIskolaPotha" id="nHimiPeriod" name="nHimiPeriod" value="0" type="number">
                                                                                                </div>
                                                                                                <div class="col-md-8 bg-top">
                                                                                                    <select class="form-control my-input input-sm" name="nHimiPeriodType" id="nHimiPeriodType">

                                                                                                        <option value="0">-තෝරන්න-</option>
                                                                                                        <option value="1">Day</option>
                                                                                                        <option value="2">Month</option>
                                                                                                        <option value="3">Year</option>



                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-4 " style="padding:2px">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-body">
                                                                                            <div class="row">
                                                                                                <div class="col-sm-12">
                                                                                                    <div class="form-group">
                                                                                                        <label class="control-label col-sm-5 input-sm">බෝනස් පොළිය :</label>
                                                                                                        <div class="col-md-7">
                                                                                                            <input class="form-control input-sm text-right convertSinhalaIskolaPotha number" placeholder="0.0" maxlength="25" name="nBonusIntRate" id="nBonusIntRate" value="" onkeypress="return event.charCode < 64" type="text">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                        <label class="control-label col-sm-5 input-sm">ණය මුදල :</label>
                                                                                                        <div class="col-md-7">
                                                                                                            <input class="form-control input-sm text-right convertSinhalaIskolaPotha number" placeholder="0.0" maxlength="25" name="nLoanAmount" id="nLoanAmount" value="" onkeypress="return event.charCode < 64" type="text">
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
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6  bg-top">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="btn btn-warning btn-sm" aria-expanded="false">
                                                                Back 
                                                            </a>
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-info btn-sm" aria-expanded="false">
                                                                Next
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
                    <!--/.section B-->
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
    </div>
    <script src="bower_components/datatables.net/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script>
        $('#table').DataTable();
    </script>
</section>