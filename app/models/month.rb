class Month < ApplicationRecord
  has_many :payments
  has_many :students, through: :payments #destroy
end
