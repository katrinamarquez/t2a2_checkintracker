class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sign_ins
  has_many :feedbacks
  has_many :restaurants 

  enum role: {customer: 0, restaurant: 1, admin: 2}

end