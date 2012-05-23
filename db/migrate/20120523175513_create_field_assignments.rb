class CreateFieldAssignments < ActiveRecord::Migration
  def change
    create_table :field_assignments do |t|
      t.integer :field_id
      t.integer :form_id
      t.timestamps
    end

    add_index :field_assignments, :field_id
    add_index :field_assignments, :form_id
    add_index :field_assignments, [:field_id, :form_id], :unique => true
  end
end
