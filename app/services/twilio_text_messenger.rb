class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
  	account_sid= "ACf2a0ddc9525639eb50fa687dc03e19b1"
  	account_auth= "9bfa960237a0ea5040f897dc7554b71b"
    client = Twilio::REST::Client.new(account_sid,account_auth)
    client.messages.create({from: "+14153601772",
    	to: '+919793490339',
    	body: message})

     
  end
end

