$(document).ready(function() { 

  $( ".datepicker" ).datepicker();

  $("#form_resourse_name").change(function() {
    $.ajax({
        type: 'GET',
        url: window.location.pathname,
        dataType:'script',
        data: {
          res: $("#form_resourse_name :selected").text()
        }
      });
    return false; 
  });

});