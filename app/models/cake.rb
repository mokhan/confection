class Cake < ActiveRecord::Base
  attr_accessible :name, :photo, :photo_cache
  mount_uploader :photo, PhotoUploader

  def slug
    name.gsub(/[^a-z0-9]+/i, '-')
  end

  def to_param
    "#{id}-#{slug}"
  end
end
