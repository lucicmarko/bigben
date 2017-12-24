# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
  Course.create!(name: Faker::DrWho.character,
                 description: Faker::Lorem.sentence(3),
                 price: Faker::Number.decimal(2),
                 img_url: 'http://mathwithgary.weebly.com/uploads/1/0/8/7/108739307/6th-grade-math-website-12_2_orig.jpg')
end
