class Cake < ActiveRecord::Base
  attr_accessible :name, :photo, :photo_cache, :category_id
  belongs_to :category
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  def slug
    name.gsub(/[^a-z0-9]+/i, '-')
  end

  def to_param
    "#{id}-#{slug}"
  end
end
