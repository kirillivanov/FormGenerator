class CreateFormBuilders < ActiveRecord::Migration
  def change
    create_table :form_builders do |t|
      t.string :name
      t.integer :form_id
      t.timestamps
    end
  end
end
