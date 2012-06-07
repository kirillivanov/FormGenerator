require 'spec_helper'

describe "ResourseSpec" do
  it "should manage columns" do
    column = FactoryGirl.create :column
    resourse = column.resourse
    resourse.can_manage_column?(column).should be_true
  end
end 