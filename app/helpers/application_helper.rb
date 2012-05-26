module ApplicationHelper

  # devise overrides
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  #appication logic
  def insert_form(name)
    meta = get_form_meta name
    simple_form_for(resursify(meta.resourse.name).new, html: { class: 'form-horizontal span7' }) do |form|
      meta.fields.visible.each_with_index do |field, i|
        concat field_recognize(form, field)
      end
      concat content_tag(:div, form.button(:submit, class: 'btn btn-primary'), class: 'form-actions')
    end
  end

  def get_list_of_models
    Dir[Rails.root.to_s + '/app/models/**/*.rb'].each { |file| require file }
    models = ActiveRecord::Base.subclasses.collect { |type| type.name }.sort
    models-%w(User Resourse Column Field Option FormBuilder)
  end

  def get_columns(resource)
    resource.column_names-%w(id created_at updated_at)
  end

  def resursify(name)
    name.classify.constantize
  end

  private 
  def get_form_meta(name) 
    FormBuilder.find_by_name name
  end

  def field_recognize(f, field)
    field = case field.variant
            when 'text_field'
              f.input field.column.name, label: field.label, as: :string, input_html: { value: "#{ field.options.first.value unless field.options.empty? }" }
            when 'date_field'
              f.input field.column.name, as: :string, input_html: { value: "#{ field.options.first.value unless field.options.empty? }", class: 'datepicker' }
            when 'select_field'
              f.input field.column.name, as: :select, collection: field.options.map { |o| o.value if o.value }, include_blank: false
            when 'number_field' 
              f.input field.column.name, as: :integer, input_html: { value: "#{ field.options.first.value unless field.options.empty? }" }  
            end
  end
end

