class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.string :value
      t.integer :field_id

      t.timestamps
    end
  end
end
