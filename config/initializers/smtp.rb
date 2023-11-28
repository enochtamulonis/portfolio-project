if Rails.env.production? 
  ActionMailer::Base.smtp_settings = {
    domain: 'www.wavclouds.com',
    address:        "smtp.sendgrid.net",
    port:            587,
    authentication: :plain,
    user_name:      "apikey",
    password:       Rails.application.credentials.dig(:sendgrid, :api_key),
  }
end
