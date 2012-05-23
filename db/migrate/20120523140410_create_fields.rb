class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :type
      t.string :label
      t.string :values
      t.integer :form_id
      t.timestamps
    end

    add_index :fields, :form_id
  end
end
