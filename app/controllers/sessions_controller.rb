class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to root_path
    else
      # render login again
    end
  end

  def destroy
    session[:id] = nil
    @current_user = nil
    redirect_to root_path
  end
end
