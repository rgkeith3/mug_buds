class CreateMugs < ActiveRecord::Migration[5.1]
  def change
    create_table :mugs do |t|
      t.string :name
      t.integer :owner_id, :null => false
      t.integer :manufacturer_id
      t.string :material
      t.string :condition

      t.timestamps
    end
  end
end
