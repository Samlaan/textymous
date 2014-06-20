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
      ['-', '(', ')'].each do |i|
        to = yaml['to'].gsub(i, '')
      end
      r.Sms yaml['body'], :to => to
    end

    render_twiml response
  end
end
