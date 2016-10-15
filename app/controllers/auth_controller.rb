class AuthController < ApplicationController
  skip_before_action :require_login, only: [:home, :login]



  def login
    @username = params[:auth][:username]
    @password = params[:auth][:password]

    user = User.find_by_name(@username)
    if user
      if user.authenticate(@password)
        flash[:success] = "Login Successful !"
        login_user(user)
        redirect_to auth_landing_path
      else
        flash[:danger] = "Invalid email/password combination"
        render 'home'
      end
    else
        flash[:danger] = "Invalid email/password combination"
        render 'home'
    end
  end

  def logout
    log_out
    flash[:info] = "Thank you for learning with us !"
    redirect_to auth_home_path
  end

  def home
    if logged_in?
      redirect_to auth_landing_path
    end
  end

  def landing

  end
end
