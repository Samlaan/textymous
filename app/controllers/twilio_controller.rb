require 'twilio-ruby'
require 'yaml'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def messaging
    response = Twilio::TwiML::Response.new do |r|
      from = params[:From]
      body = params[:Body]
      yaml = YAML.load(body)
      r.Sms yaml['body'], :to => yaml['to']
    end

    render_twiml response
  end
end
