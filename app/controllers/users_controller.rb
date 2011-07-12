class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def create
    @user = User.new(params[:id])
    if @user.save
      redirect_to @user
      flash[:success] = "Welcome to the Online Book Exchange!"
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
