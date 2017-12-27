class Month < ApplicationRecord
  has_many :payments
  has_many :students  #destroy
  has_many :months, through: :payments
end
