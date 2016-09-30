class AuthController < ApplicationController
  def login
    @username = params[:auth][:username]
    @password = params[:auth][:password]

    if 1==1
      flash[:danger] = "Login Successful !"
      redirect_to auth_landing_path
    else
      flash[:danger] = "Invalid email/password combination"
      render 'home'
    end

  end

  def logout
  end

  def home
  end

  def landing

  end
end
