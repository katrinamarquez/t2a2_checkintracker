class Ability
  include CanCan::Ability

  def initialize(user)

    # Handle the case where we don't have a current_user i.e. the user is a guest
    user ||= User.new

    # Define user abilities
    if user.customer?
      can [:read, :create], SignIn 
      can [:update, :destroy], SignIn, :user_id => user.id
      can [:read, :create], Feedback 
      can [:update, :destroy], Feedback, :user_id => user.id
      can :read, Restaurant
    elsif user.restaurant?
      can [:read, :create], Restaurant 
      can [:update, :destroy], Restaurant, :user_id => user.id 
      can :read, Feedback
      can :read, SignIn
    # MVP does not hide this option to regular users for this version of the app
    elsif user.admin?
      can :read, all
    else
      # what everyone can do
    end
  end
end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
