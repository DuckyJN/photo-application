class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice]="Login successful"
      redirect_to '/'
    else
      if params[:username].empty? || params[:password].empty?
        flash[:danger] = []
        flash[:danger].push("ユーザーIDを入力してください") if params[:username].empty?
        flash[:danger].push("パスワードを入力してください") if params[:password].empty?
      else
        flash[:danger] = "ユーザーIDとパスワードが一致するユーザーが存在しない"
      end
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
