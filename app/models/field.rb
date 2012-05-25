class Field < ActiveRecord::Base
  serialize :values
  attr_accessible :label, :variant, :values
  has_many :field_assignments
  has_many :fields, :through => :field_assignments
end
