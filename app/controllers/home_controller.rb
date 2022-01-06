class HomeController < ApplicationController
	  skip_before_action :verify_authenticity_token

	def new
	end
	def create
    @data= Employee.new(first_name: params[:first_name],
                     email: params[:email],
                     last_name: params[:last_name])
    if @data.save
    	message = "hiii"
      TwilioTextMessenger.new(message).call
    end
                     
    end
end
