module UsersHelper

  def current_user
    @current_user ||= User.find(session[:id])
  end

  def authorize
    redirect_to '/login' unless current_user
  end

end
