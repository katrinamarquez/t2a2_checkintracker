class Restaurant < ApplicationRecord
  belongs_to :user
  has_one :pic
  has_many :sign_in
  # has_many :feedback
end 