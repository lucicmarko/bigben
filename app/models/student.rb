class Student < ApplicationRecord
  has_many :payments
  has_many :courses, through: :payments
  has_many :months, through: :payments
end
