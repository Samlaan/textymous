require 'twilio-ruby'
require 'yaml'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def messaging
    response = Twilio::TwiML::Response.new do |r|
      phonebook = { :a1 => "+17789076543" }
      from = params[:From]
      body = params[:Body]
      yaml = YAML.load("---\n#{body}\n---")
      if ! phonebook.has_value?(from)
        # give "from" an id
      end
      r.Sms "from: #{phonebook.key(from).to_s}\n#{yaml['body']}", :to => yaml['to']
    end

    render_twiml response
  end
end
