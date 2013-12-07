# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
GSA10::Application.initialize!


CREDENTIALS = YAML.load_file(Rails.root.join('config','email.yml'))

ActionMailer::Base.smtp_settings = {
  user_name: CREDENTIALS['username'],
  password: CREDENTIALS['password'],
  address: 'smtp.gmail.com',
  port: 587,
  authentication: 'plain',
  enable_starttls_auto: true
}
