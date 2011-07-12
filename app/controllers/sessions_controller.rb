class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                            params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
      # Create an error message
    else
      sign_in user
      redirect_to user
      # redirect to profile page
    end
  end
  
  def destroy
  end

end
