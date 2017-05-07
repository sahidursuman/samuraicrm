require 'cancan'

module Samurai
  module Contacts
    class AbilityDecorator
      include CanCan::Ability

      def initialize(user)
        unless user.admin?
          can :manage, Samurai::Contacts::Contacts, user_id: user.id
        end
      end
    end
  end
end

Samurai::Ability.register_ability(Samurai::Contacts::AbilityDecorator)
