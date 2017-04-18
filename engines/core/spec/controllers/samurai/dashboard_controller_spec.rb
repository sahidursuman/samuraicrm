require 'rails_helper'

module Samurai
  describe DashboardController do
    set_engine_routes

    context 'signed out' do
      describe 'GET Index' do
        it 'does not have a current_user' do
          expect(subject.current_user).to be_nil
        end

        it 'redirects the user to login page' do
          get :index
          expect(subject).to redirect_to new_user_sessions_path
        end
      end
    end
  end
end
