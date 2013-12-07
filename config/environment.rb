# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
GSA10::Application.initialize!


if Rails.env.development?
CREDENTIALS = YAML.load_file(Rails.root.join('config','email.yml'))
end


GSA_EMAIL = Rails.env.development? ? CREDENTIALS['username'] : ENV['GSA_EMAIL']
GSA_PASSWORD = Rails.env.development? ? CREDENTIALS['password'] : ENV['GSA_PASSWORD']


ActionMailer::Base.smtp_settings = {
  user_name: GSA_EMAIL,
  password: GSA_PASSWORD,
  address: 'smtp.gmail.com',
  port: 587,
  authentication: 'plain',
  enable_starttls_auto: true
}
