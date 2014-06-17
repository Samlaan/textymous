require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      # r.Sms 'Thanks for calling :D'
      r.Play 'https://github.com/trommel/trommel.github.io/raw/master/random/phantoms-cant-dance.wav',
        :loop => 0
    end

  def messaging
  end

    render_twiml response
  end
end
