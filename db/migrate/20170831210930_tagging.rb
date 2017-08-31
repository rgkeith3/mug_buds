class Tagging < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.integer :tag_id, null: false
      t.integer :mug_id, null: false

      t.timestamps
    end
  end
end
