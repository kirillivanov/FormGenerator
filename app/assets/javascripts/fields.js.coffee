jQuery ->
  _columns = $('#field_column_id').html()
  _forms = $('#field_form_builder_id').html()

  fill_select(_columns, _forms)
  $('#field_resourse_id').change ->
    fill_select(_columns, _forms)

fill_select = (a,b) -> 
  _resourse = $('#field_resourse_id :selected').text()

  _escaped = _resourse.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')

  _columns_options = $(a).filter("optgroup[label='#{_escaped}']").html()
  _forms_options = $(b).filter("optgroup[label='#{_escaped}']").html()

  if _columns_options then $('#field_column_id').html(_columns_options) else $('#field_column_id').empty()
  if _forms_options then $('#field_form_builder_id').html(_forms_options) else $('#field_form_builder_id').empty()