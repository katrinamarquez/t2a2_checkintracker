# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Restaurant can create restaurants and user details. 
    if user.role? :restaurant
      can :manage, Restaurant
      can :read, SignIn  
      can :read, Feedback 
      can :manage, User
    end 

    # Customer can view restaurant details and view other functions. 
    if user.role? :customer
      can :read, Restaurant
      can :manage, SignIn
      can :manage, Feedback
      can :manage, User
    end
  end
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
