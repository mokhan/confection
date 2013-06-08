# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::MimeTypes

  storage :fog
  process :set_content_type

  version :hero do 
    process :resize_to_fit => [570, 630]
  end

  version :thumb, :from_version => :hero do
    process :resize_to_fill => [260, 180]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
