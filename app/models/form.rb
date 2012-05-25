class Form < ActiveRecord::Base
  attr_accessible :resourse_name
  has_many :field_assignments
  has_many :forms, :through => :field_assignments
end
