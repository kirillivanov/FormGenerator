require 'spec_helper'
# TODO:
# add Field test
describe "LinksSpec" do
  it "shows page content" do
    login
    %w(resourse column form_builder).each do |model_name|
      obj = FactoryGirl.create :"#{model_name}"
      get_all_paths(model_name, obj).each do |path| 
        visit path
        current_path.should eq(path)
        page.should have_content(model_name.classify.constantize.model_name.human)
      end
    end
  end

  it "rejects unregistered user" do
    %w(resourse column form_builder).each do |model_name|
      obj = FactoryGirl.create :"#{model_name}"
      get_all_paths(model_name, obj).each do |path| 
        visit path
        current_path.should eq(new_user_session_path)
        page.should have_content('You need to sign in or sign up before continuing.')
      end
    end
  end
end
