class AddCategoryIdToCake < ActiveRecord::Migration
  def change
    add_column :cakes, :category_id, :integer
  end
end
