class FormBuilder < ActiveRecord::Base
  attr_accessible :name, :resourse_id, :fields_attributes
  belongs_to :resourse
  has_many :fields, :dependent => :destroy
  accepts_nested_attributes_for :fields, :reject_if => :all_blank, allow_destroy: true
  validates_uniqueness_of :name
end
