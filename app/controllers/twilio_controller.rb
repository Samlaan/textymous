require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      # r.Sms 'Thanks for calling :D'
      r.Say 'niggerdick', :voice => 'Alice'
      # r.Dial '+17788655674'
      # r.Play 'https://github.com/trommel/trommel.github.io/raw/master/random/never-gonna-give-you-up.mp3',
      #   :loop => 0
    end

    def messaging
      response = Twilio::TwiML::Response.new do |r|
        # r.Sms 'Thanks for calling :D'
        r.Sms 'It worked :D'
    end

    render_twiml response
  end
end
