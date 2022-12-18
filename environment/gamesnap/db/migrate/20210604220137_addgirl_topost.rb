class AddgirlTopost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :girl, :string
  end
end
