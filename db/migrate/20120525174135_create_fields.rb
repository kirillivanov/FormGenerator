class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :variant
      t.string :label
      t.string :values
      t.timestamps
    end
  end
end
