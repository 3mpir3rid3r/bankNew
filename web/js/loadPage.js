/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function () {

    $(document).on("click", '[data="load"]', function () {
        var url = $(this).attr('data-load');
        var param = $(this).attr('data-param');
        var stateObj = {url: url, param: param};
        window.history.pushState(stateObj, "", "");
        $('div.content-wrapper').html('<center><img src="assets/img/icon/Ellipsis-2.4s-55px.gif" alt=""/></center>')
                .load(url, param, function (response, status, xhr) {
                    if (status == "error") {
                        $('div.content-wrapper').load("load/error/" + xhr.status + ".jsp").fadeIn("slow");
                    }
                }).fadeIn("slow");
    });
});

window.onpopstate = function (event) {
    $('div.content-wrapper').html('<center><img src="assets/img/icon/Ellipsis-2.4s-55px.gif" alt=""/></center>')
            .load(history.state.url, history.state.param).fadeIn("slow");
};

