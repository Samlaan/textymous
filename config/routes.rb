Rails.application.routes.draw do
  post 'twilio/voice' => 'twilio#voice'
  post 'twilio/messaging' => 'twilio#messaging'
end
