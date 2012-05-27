class Resourse < ActiveRecord::Base
  attr_accessible :name
  has_many :columns
  has_many :fields
  validates_uniqueness_of :name
  validates_presence_of :name
end
