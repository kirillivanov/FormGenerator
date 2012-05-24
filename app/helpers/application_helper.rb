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

  def custom_form(form_meta)
    form_for(form_meta[:object].new) do |form|
      form_meta[:fields].each_with_index do |field, i|
        concat field_recognize(form, field)
        concat tag("br")
      end
    end
  end

  private 

  def field_recognize(form, field)
    if field[0] == 'text'
      form.label "text"
    elsif field[0] == 'select'
      form.label "select"
    end
  end

end

