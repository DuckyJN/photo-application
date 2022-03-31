class UserController < ApplicationController
  before_action :set_user, only: [:show]
  
  def create
    @user = User.new(user_params)
    if @user.save
      Gallery.new(user_id: @user.id).save
      flash[:notice]="Signup successful"
      redirect_to '/login'
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
    @photos = current_user.gallery.photos.order("created_at DESC") if current_user
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
