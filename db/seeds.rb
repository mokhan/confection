require 'ffaker'

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

(1..10000).each do |x|
  cake = Cake.create(name: Faker::Lorem.word, category_id: x % 9, photo: File.open('/Users/mo/Pictures/nailah_cake.jpg'))
  cake.user = User.create!(email: Faker::Internet.email, password: 'password', password_confirmation: 'password')
  cake.save!
end
