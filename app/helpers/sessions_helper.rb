module SessionsHelper
  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end
