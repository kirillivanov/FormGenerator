class FormBuilder < ActiveRecord::Base
  attr_accessible :name, :fields_attributes
  belongs_to :form
  has_many :fields, :dependent => :destroy
  accepts_nested_attributes_for :fields, :reject_if => :all_blank, allow_destroy: true
end
