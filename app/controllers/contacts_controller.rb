class ContactsController < ApplicationController
	def create
  	render plain: params[:contacts].inspect
  	data = params[:contacts]
  	@cont = Contact.create(contact_params)
  	
  end

  def contact_params
		params.require(:contacts).permit(:email, :message)
	end	

end
