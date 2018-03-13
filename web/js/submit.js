/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('form').submit(function (e) {
    e.preventDefault();
    $.ajax({
        type: 'post',
        url: $(this).attr('action'),
        data: $(this).serialize(),
        success: function (data) {
            console.log(data);
            var dataSplit = data.split("-");
            if (dataSplit[0] === "done") {
                swal("Job Done!", "You Added new customer!", "success");
            } else if (dataSplit[0] === "error") {
                swal("Cancelled", "Your request cant be done :(", "error");
            }
        },
        error: function (data) {
            console.log(data);
            swal("Cancelled", "Your imaginary request cant be done :(", "error");
        }
    });
});