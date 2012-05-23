class CreateFieldMetaInfos < ActiveRecord::Migration
  def change
    create_table :field_meta_infos do |t|

      t.timestamps
    end
  end
end
