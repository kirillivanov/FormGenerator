class Column < ActiveRecord::Base
  attr_accessible :name, :resourse_id
  has_many :fields, dependent: :destroy
  belongs_to :resourse
  validates_uniqueness_of :name, scope: :resourse_id
  validates_presence_of :name
end