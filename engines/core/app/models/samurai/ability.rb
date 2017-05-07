module Samurai
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new

    # Allows us to go beyond the standard cancan initialize method which makes
    # it difficult for engines to modify the default {Ability} of an
    # application. The registered ability should behave properly as a
    # stand-alone class and therefore should be easy to test in isolation.
    # @param ability [Ability] a class that includes the CanCan::Ability module.
    def self.register_ability(ability)
      self.abilities.add(ability)
    end

    def initialize(user)

      if user.admin?
        can :manage, :all
      else
        can :read, :dashboard
      end
    end
  end
end
