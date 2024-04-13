class AddColumnTitles < ActiveRecord::Migration[7.0]
  def change
    def up
      add_column :users, :image_id, :string
    end
  
    def down
      remove_column :users, :image, :string
    end
  end
end
