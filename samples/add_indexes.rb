class AddIndexesToCakes < ActiveRecord::Migration
  def change
    add_index :cakes, :updated_at
    add_index :cakes, :category_id
  end
end
