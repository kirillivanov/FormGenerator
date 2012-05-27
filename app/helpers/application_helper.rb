module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def insert_form(name = 'Column Builder')
    _meta = get_form_meta name
    simple_form_for(resursify(_meta), :html => { :class => 'form-horizontal' }) do |form|
      _meta.fields.where(visible: true).each_with_index do |field, i|
        concat field_recognize(form, field)
      end
      concat form.submit
    end
  end

  def get_list_of_models
    Dir[Rails.root.to_s + '/app/models/**/*.rb'].each { |file| require file }
    models = ActiveRecord::Base.subclasses.collect { |type| type.name }.sort
    models-["User"]
  end

  def get_columns(resource)
    resource.column_names-['id']
  end

  private 

  def get_form_meta(name) 
    FormBuilder.find_by_name(name)
  end

  def field_recognize(f, field)
    if field.variant == 'text_field'
      f.input field.column.name, label: field.label
    elsif field.variant == 'date_field'
      f.input field.column.name, :as => :string, :input_html =>{:class => "datepicker"}
    end
  end

  def resursify(meta)
    Column.new
  end

end

