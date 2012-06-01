module AuthMacros 
  def login()
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
    page.should have_content('Signed in successfully.')
  end

  def get_all_paths(model_name, obj)
    arr = []
    arr << send("new_#{model_name}_path")
    arr << send("#{model_name.pluralize}_path")
    arr << send("#{model_name}_path", obj)
    arr << send("edit_#{model_name}_path", obj)
  end
end