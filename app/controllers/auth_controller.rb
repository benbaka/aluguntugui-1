class AuthController < ApplicationController
  def login
    @username = params[:auth][:username]
    @password = params[:auth][:password]

    user = User.find_by_name(@username)
    if user
      if user.authenticate(@password)
        flash[:success] = "Login Successful !"
        redirect_to auth_landing_path
      else
        flash[:danger] = "Invalid email/password combination"
        render 'home'
      end
    end

  end

  def logout
  end

  def home
  end

  def landing

  end
end
