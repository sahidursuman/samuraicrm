require_dependency "samurai/application_controller"

module Samurai::Contacts
  class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]

    private
      def set_contact
        @contact = Contact.find(params[:id])
      end

      def contact_params
        params.require(:contact).permit(:first_item, :last_name, :company, :email, :phone, :user_id)
      end
  end
end
