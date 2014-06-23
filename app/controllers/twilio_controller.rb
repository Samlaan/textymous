require 'twilio-ruby'
require 'yaml'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Play 'https://github.com/trommel/trommel.github.io/raw/master/random/never-gonna-give-you-up.mp3'
    end
    render_twiml response
  end

  def messaging
    response = Twilio::TwiML::Response.new do |r|
      from = params[:From]
      body = params[:Body]
      if body.downcase.include? 'help' # send help if user's text has the word 'help' in it
        # sorry for the shitty indenting below
        r.Sms "Example:

to: +17781234567
body: hello!"
      else
        yaml = YAML.load("---\n#{body}\n---")
        phonebook = "{ #{File.read('app/controllers/phonebook.rb')} }".gsub "\n", ""

        if ! phonebook.include?(from)
          File.open('app/controllers/phonebook.rb', 'a') do |file|
            file.write(":user#{rand(10000)} => '#{from}',")
          end
        end

        phonebook = "{ #{File.read('app/controllers/phonebook.rb')} }".gsub "\n", ""
        phonebook = eval(phonebook)
        r.Sms "
From: #{phonebook.invert[from].to_s}

#{yaml['body']}", :to => yaml['to']
      end
    end

    render_twiml response
  end
end
