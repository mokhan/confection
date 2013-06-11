source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.13'
gem 'jquery-rails'
gem 'carrierwave'
gem 'fog'
gem 'rmagick'
gem 'sqlite3', :groups => [:development, :test]
gem 'pg'
gem 'kaminari'
gem 'bootstrap-sass'
gem 'dotenv-rails', :groups => [:development, :test]

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'asset_sync'
end

group :production do
  gem 'unicorn'
  gem 'newrelic_rpm'
  gem 'dalli'
end
