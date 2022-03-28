class UserController < ApplicationController
  before_action :set_user, only: [:show]
  
  def create
    user = User.new(user_params)
    if user.save
      flash[:notice]="Signup successful"
    else
      flash[:notice]="Please try again"
      redirect_to '/signup'
    end
  end

  def new
  end

  def index
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
