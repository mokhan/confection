ENV['RAILS_ENV'] ||= "development"
require_relative '../config/environment.rb'

unless Category.any?
  Category.create([
    { name: 'Cakes', slug: 'cakes'},
    { name: 'Candy', slug: 'candy'},
    { name: 'Caramels', slug: 'caramels'},
    { name: 'Cup Cakes', slug: 'cup+cakes'},
    { name: 'Donuts', slug: 'donuts'},
    { name: 'Fondant', slug: 'fondant'},
    { name: 'Fudge', slug: 'fudge'},
    { name: 'Ice Cream', slug: 'ice+cream'},
    { name: 'Taffy', slug: 'taffy'},
  ])
end
