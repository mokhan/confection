ENV['RAILS_ENV'] ||= "development"
require_relative '../config/environment.rb'

p User.count
User.destroy_all
p Category.count
Category.destroy_all
p Cake.count
Cake.destroy_all
