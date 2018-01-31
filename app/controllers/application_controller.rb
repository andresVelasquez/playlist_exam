class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  def require_login
    redirect_to '/' if session[:user_id] == nil
  end
  def require_correct_user
    user = User.find_by_id(params[:id]) # use find_by here instead of find like the platform has so non-existant numbers don't throw up exception and crash site
    redirect_to "/events" if current_user != user
  end
end
