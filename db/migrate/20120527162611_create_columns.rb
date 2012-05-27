class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.string :name
      t.integer :resourse_id

      t.timestamps
    end
  end
end
