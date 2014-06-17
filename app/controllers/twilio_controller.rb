require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Sms 'Thanks for calling :D', :from => '+17786541046'
      r.Play 'https://github.com/trommel/trommel.github.io/raw/master/random/never-gonna-give-you-up.mp3'
    end

    render_twiml response
  end
end
