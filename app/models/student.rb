class Student < ApplicationRecord
  has_many :courses
  has_many :payments, through: :courses #destroy

  #validacija
end
