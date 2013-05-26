class AddPhotoToCakes < ActiveRecord::Migration
  def change
    add_column :cakes, :photo, :string
  end
end
