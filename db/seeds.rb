# create working months
Month.create!(name: "September")
Month.create!(name: "October")
Month.create!(name: "November")
Month.create!(name: "December")
Month.create!(name: "January")
Month.create!(name: "February")
Month.create!(name: "March")
Month.create!(name: "April")
Month.create!(name: "May")
Month.create!(name: "Jun")
Month.create!(name: "July")

5.times do |i|
  c = Course.create!(name: Faker::DrWho.character,
                     description: Faker::Lorem.sentence(3),
                     price: Faker::Number.decimal(2),
                     img_url: 'https://fakeimg.pl/200x200/0000ff/000/')

  s = Student.create!(first_name: Faker::Name.first_name, 
                      last_name: Faker::Name.last_name, 
                      address: Faker::Address.street_address, 
                      phone: Faker::PhoneNumber.cell_phone)
  
  Payment.create!(amount: 50, 
                  course: c, 
                  month: Month.all.sample,
                  student: s)
end
