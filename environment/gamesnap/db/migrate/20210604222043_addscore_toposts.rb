class AddscoreToposts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :score, :string
  end
end
