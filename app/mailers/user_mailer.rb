class UserMailer < ApplicationMailer
  def new_contact_request
    @contact = params[:contact]
    mail(to: "enochtamulonis@gmail.com", subject: "New contact request from #{@contact.full_name}")
  end
end
