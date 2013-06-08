CarrierWave.configure do |config|
  if Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  else
    config.storage = :fog
    config.fog_credentials = {
      :provider               => ENV['FOG_PROVIDER'],
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => 'us-east-1'
    }
    config.fog_directory  = ENV['FOG_DIRECTORY']
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
    config.asset_host       = ENV['ASSET_HOST']
  end
end
