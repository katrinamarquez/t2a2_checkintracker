# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    # # Customer
    # if user.has_role? :customer
    #   can :read, Restaurant 
    #   can :manage, SignIn
    #   can :manage, Feedback
    # # Restaurant
    # elsif user.has_role? :restaurant 
    #   can :manage, Restaurant
    #   can :read, SignIn  
    #   can :read, Feedback 
    # else
    #   can :read, :all
    # end
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
