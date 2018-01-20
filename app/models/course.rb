class Course < ApplicationRecord
  has_many :payments, through: :students # dependent destroy:

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  #scope -> { where archived: false}


  # active course
end
