class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :resourse_name
      
      t.timestamps
    end
  end
end
