class UserMailer < ApplicationMailer
  default from: 'donotreply@example.com'
  
  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
