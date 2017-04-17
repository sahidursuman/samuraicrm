require 'spec_helper'

module Samurai
  describe User do
    it 'has a valid factory' do
      expect(FactoryGirl.build(:user)).to be_valid
    end

    it 'is invalid without an email' do
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end

    it 'is invalid without a password' do
      expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
    end

    it 'is invalid with a different password and password_confirmation' do
      expect(FactoryGirl.build(:user, password: 'pass',
                                      password_confirmation: 'pwd'
      )).to_not be_valid
    end
  end
end
