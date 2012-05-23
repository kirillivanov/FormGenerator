class CreateFormMetaInfos < ActiveRecord::Migration
  def change
    create_table :form_meta_infos do |t|

      t.timestamps
    end
  end
end
