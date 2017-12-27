class Course < ApplicationRecord
  has_many :payments, through: :students #destroy:

  validates :name, presence: true
end
