class Api::ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]
  
  def index
    @contacts = Contact.all
    render json: @contacts
  end
	
  def show
		render json: @contact
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
			render json: { errors: { message: 'Contact NOT created' }}
    end
  end
	
  def update
    @contact.update(contact_params)
		if @contact.save
			render json: @contact
    else
			render json: { errors: { message: 'Contact NOT updated' }}
    end
  end

  def destroy
    @contact.destroy
		render json: { message: 'Contact deleted.' }
  end

  private
  def set_contact
    @contact = Contact.find_by_id(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:fname, :lname, :title, :email, :phone, :url, :about, :linkedin, :twitter, :company_id)
  end
end
