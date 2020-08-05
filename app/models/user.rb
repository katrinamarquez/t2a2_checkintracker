class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sign_ins
  has_many :sign_outs

  # 'Standard' means person clocking in, 'Restaurant' adds ability to create a restaurant and 'Admin' has access to everyone.
  # 'Admin' will not be allowed to be selected by users. 
  enum role: [:standard, :restaurant, :admin]

  # Default role for users when they sign on is Standard
  after_initialize do 
    if self.new_record?
      self.role ||= :Standard
    end
  end
  
end
