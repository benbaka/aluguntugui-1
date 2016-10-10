class ApplicationController < ActionController::Base
  before_action :require_login
  protect_from_forgery with: :exception

  include AuthHelper



  private
  def require_login
    unless logged_in?
      flash[:error] = "Please login."
      redirect_to auth_home_url
    end
  end
end
