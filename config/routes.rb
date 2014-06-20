Rails.application.routes.draw do
  post 'twilio/messaging' => 'twilio#messaging'
end
