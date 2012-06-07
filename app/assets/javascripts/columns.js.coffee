$("#column_resourse_id").click ->
  $.ajax
    type: 'GET',
    url: window.location.pathname,
    dataType:'script',
    data: 
      selected: $("#column_resourse_id :selected").val(),
      resourse: $("#column_resourse_id :selected").text()
  return false;

