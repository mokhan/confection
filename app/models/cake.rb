class Cake < ActiveRecord::Base
  attr_accessible :name, :photo, :photo_cache
  mount_uploader :photo, PhotoUploader
end
