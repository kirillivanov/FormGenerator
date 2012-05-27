class Field < ActiveRecord::Base
  attr_accessible :label, :variant, :visible, :resourse_id, :column_id, :form_builder_id

  belongs_to :resourse
  belongs_to :column
  belongs_to :form_builder
  #validates_presence_of :label, :variant, :column
  #validates_uniqueness_of :form_id, :scope => :column
  #belongs_to :form
end
