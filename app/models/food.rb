class Food < ApplicationRecord
  belongs_to :user

  validates :food ,presence: true
  validates :calorie ,presence: true
  validates :eat_timing ,presence: true
  validates :start_time ,presence: true
end
