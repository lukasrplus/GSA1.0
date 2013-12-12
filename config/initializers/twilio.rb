if Rails.env.development?
  path = File.join(Rails.root, "config/twilio.yml")
  TWILIO_CONFIG = YAML.load(File.read(path))[Rails.env] || {'sid' => '', 'from' => '', 'token' => ''}
end


TWILIO_SID = Rails.env.development? ? TWILIO_CONFIG['sid'] : ENV['TWILIO_SID']
TWILIO_TOKEN = Rails.env.development? ? TWILIO_CONFIG['token'] : ENV['TWILIO_TOKEN']
TWILIO_FROM = Rails.env.development? ? TWILIO_CONFIG['from'] : ENV['TWILIO_FROM']
