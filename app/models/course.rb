class Course < ApplicationRecord
  has_many :payments #destroy:
  has_many :students, through: :payments
  # has_many :teacher
end
