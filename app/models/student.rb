class Student < ApplicationRecord
  has_many :courses
  has_many :payments, through: :courses #destroy
  #has_many :active_courses ?????

  #validacija


  # active course

  # Course.where(archived: false)
end
