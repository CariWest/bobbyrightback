class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save!
      # redirect around the website...
    else
      # render sign up
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
  end

end
