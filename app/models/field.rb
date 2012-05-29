class Field < ActiveRecord::Base
  attr_accessible :label, :variant, :visible, :resourse_id, :column_id, :form_builder_id, :options_attributes

  has_many :options, :dependent => :destroy

  belongs_to :resourse
  belongs_to :column
  belongs_to :form_builder
  validates_presence_of :variant, :resourse_id, :column_id, :form_builder_id
  validates_uniqueness_of :column_id, :scope => [:form_builder_id, :resourse_id]
  accepts_nested_attributes_for :options, :reject_if => :all_blank, allow_destroy: true

  def self.visible
    where(visible: true)
  end
  
end
