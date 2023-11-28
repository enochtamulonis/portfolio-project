class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    if @contact = Contact.create(contact_params)
      session[:contact_request_sent] = true
      UserMailer.with(contact: @contact).new_contact_request.deliver_later
      redirect_to root_path, notice: "Your contact request was sent. I will be in touch soon."
    else
      render :new
    end
  end

  private


  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone, :email, :body)
  end
end