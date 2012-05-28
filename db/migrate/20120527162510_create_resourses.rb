class CreateResourses < ActiveRecord::Migration
  def change
    create_table :resourses do |t|
      t.string :name
      t.timestamps
    end
  end
end
