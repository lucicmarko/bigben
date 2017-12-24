class Course < ApplicationRecord
  has_many :students
  # has_many :teacher
  has_many :payments, through: :students #destroy:
end
