class Column < ActiveRecord::Base
  attr_accessible :name, :resourse_id

  has_many :fields

  validates_uniqueness_of :name
  validates_presence_of :name
end
