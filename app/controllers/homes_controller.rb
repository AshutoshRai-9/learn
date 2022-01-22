class HomesController < ApplicationController
 skip_before_action :verify_authenticity_token
                   
  def index
    @data= Employee.all
  end

  def new
  end
  
  def create
    # @data= Employee.new(first_name: params[:first_name],
    #                  email: params[:email],
    #                  last_name: params[:last_name])

    @data= Employee.new(first_name: params[:first_name],
                     email: params[:email],
                 last_name: params[:last_name])
    if @data.save
      message = "hiii"
      TwilioTextMessenger.new(message).call
      redirect_to "/new"
    end
  end

  def show
    @user=Employee.find(params[:id])
  end

	def edit
		@data= Employee.find(params[:id])
	end

  def update
    @data =Employee.where(id: params[:id])
    @data.update(update_params)
  end
  private
  def update_params
  	params.require(:employee).permit(:first_name,:last_name,:email)
  end
end
