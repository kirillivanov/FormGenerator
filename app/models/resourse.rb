class Resourse < ActiveRecord::Base
  attr_accessible :name
  has_many :columns, dependent: :destroy
  has_many :fields, dependent: :destroy
  has_many :form_builders, dependent: :destroy
  validates_uniqueness_of :name
  validates_presence_of :name
end