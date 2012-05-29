class CreateTestModels < ActiveRecord::Migration
  def change
    create_table :test_models do |t|
      t.string :name
      t.integer :age
      t.date :birthday
      t.string :city
      t.timestamps
    end
  end
end
