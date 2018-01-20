FactoryBot.define do
  factory :course do
    name Faker::Name.unique.name
    description Faker::Lorem.sentence(3)
    price Faker::Number.decimal(2)
    img_url "https://fakeimg.pl/200x200/0000ff/000/"
  end
end
