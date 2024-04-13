class AddDetailsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :price, :integer
    add_column :posts, :count, :integer
    add_column :posts, :play, :string
  end
end
