class Option < ActiveRecord::Base
  attr_accessible :field_id, :name, :value
  belongs_to :field
  validates_presence_of :value
end
