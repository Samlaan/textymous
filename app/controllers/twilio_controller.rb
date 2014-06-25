require 'twilio-ruby'
require 'yaml'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Play 'https://github.com/trommel/trommel.github.io/raw/master/random/never-gonna-give-you-up.mp3',
      loop: 0
    end
    render_twiml response
  end

  def messaging
    def log(text)
      File.open('app/controllers/test.txt', 'w') do |file|
        file.write(text)
      end
    end
    response = Twilio::TwiML::Response.new do |r|
      from = params[:From]
      body = params[:Body]
      if body.downcase.include? 'help' # send help if user's text has the word 'help' in it
        # sorry for the shitty indenting below
        r.Sms "Respond to this text with a 'to' and 'body'
        Example:

to: +17781234567
body: hey dude


to: user7790
body: hello!
"
      elsif body.downcase.include? 'who am i'
        yaml = YAML.load("---\n#{body}\n---")
        phonebook = "{ #{File.read('app/controllers/phonebook.rb')} }".gsub "\n", ""

        if ! phonebook.include?(from)
          File.open('app/controllers/phonebook.rb', 'a') do |file|
            file.write(":user#{rand(100000)} => '#{from}',")
          end
        end

        phonebook = "{ #{File.read('app/controllers/phonebook.rb')} }".gsub "\n", ""
        phonebook = eval(phonebook)
        r.Sms phonebook.invert[from].to_s
      else
        yaml = YAML.load("---\n#{body}\n---")
        phonebook = "{ #{File.read('app/controllers/phonebook.rb')} }".gsub "\n", ""

        if ! phonebook.include?(from)
          File.open('app/controllers/phonebook.rb', 'a') do |file|
            file.write(":user#{rand(100000)} => '#{from}',")
          end
        end

        phonebook = "{ #{File.read('app/controllers/phonebook.rb')} }".gsub "\n", ""
        phonebook = eval(phonebook)
        to = yaml['to']

        if to.to_s.include? 'user'
          log phonebook[to.to_sym]
          if phonebook.key? to.to_sym
            log phonebook[to.to_sym]
            to = phonebook[to.to_sym]
          end
        end

        r.Sms "
From: #{phonebook.invert[from].to_s}

#{yaml['body']}", :to => to
      end
    end

    render_twiml response
  end
end
