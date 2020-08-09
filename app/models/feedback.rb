class Feedback < ApplicationRecord
  belongs_to :user
  # belongs_to :restaurants
  has_one_attached :pic
end
