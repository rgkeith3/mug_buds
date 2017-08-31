class AddImageUrlToMugs < ActiveRecord::Migration[5.1]
  def change
    add_column :mugs, :image_url, :string
  end
end
