class ContactsController < ApplicationController

	def new

	end	

	def create
  	data = params[:contacts]
  	@cont = Contact.create(contact_params)
  	
  end

  private

  def contact_params
		params.require(:contacts).permit(:email, :message)
	end	

end
