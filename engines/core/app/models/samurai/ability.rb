module Samurai
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new

    def initialize(user)

      if user.admin?
        can :manage, :all
      else
        can :read, :dashboard
      end
    end
  end
end
