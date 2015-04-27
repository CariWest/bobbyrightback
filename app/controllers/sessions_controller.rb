class SessionsController < ApplicationController
  def new
    # redirect to login
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:id] = user.id
      # redirect wherever necessary
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
