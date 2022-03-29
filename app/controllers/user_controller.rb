class UserController < ApplicationController
  before_action :set_user, only: [:show]
  
  def create
    p params
    user = User.new(user_params)
    if user.save
      flash[:notice]="Signup successful"
    else
      flash[:alert] ||= []
      user.errors.full_messages.each do |message|
        flash[:alert].push(message)
      end
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
