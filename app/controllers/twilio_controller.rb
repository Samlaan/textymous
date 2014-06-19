require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      # r.Sms 'Thanks for calling :D'
      r.Play 'https://raw.githubusercontent.com/trommel/trommel.github.io/master/random/never-gonna-give-you-up.mp3',
        :loop => 0
      5.times do
        r.Sms "we're no strangers to love"
      end
    end

  def messaging
  end

    render_twiml response
  end
end
