class UsersController < ApplicationController
  
  def new 
    @user = User.new 
    render :new
  end 
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_url(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
    render :show
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
  
end
