class Payment < ApplicationRecord
  belongs_to :course
  belongs_to :month
  belongs_to :student
end
