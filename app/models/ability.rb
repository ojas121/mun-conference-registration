class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user
    if user.role? :"System Admin"
        can :manage, :all
    else
        if user.role? :"Conference Manager"
            cannot :manage, Ability
            cannot :manage, Role
            cannot :manage, Country
            can :manage, User
            can :read, Conference
            can :manage, List           
            can :manage, School
            can :manage, Committee
            can :manage, Delegate
     

        else
            if user.role? :"MUN Director"
                can :manage, School
                can :manage, Delegate 
                cannot :manage, Ability
                cannot :read, User
                cannot :manage, Role
                cannot :manage, Country
                can    :read, Conference
                cannot :manage, List
                cannot :manage, Committee
               

                
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
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
