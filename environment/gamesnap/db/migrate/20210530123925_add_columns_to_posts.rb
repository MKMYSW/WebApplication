class AddColumnsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :img, :string
  end
end
