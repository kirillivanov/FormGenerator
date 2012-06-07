class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :label
      t.string :variant
      t.boolean :visible
      t.integer :resourse_id
      t.integer :column_id
      t.integer :form_builder_id

      t.timestamps
    end
  end
end
