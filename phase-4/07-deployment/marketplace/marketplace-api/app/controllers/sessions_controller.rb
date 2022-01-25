class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:login]

  def login
    # find the user by username 
      user = User.find_by_username(params[:username])

    # does the user exist? handled by the rescue defined in application controller 

    # is the password authenticated?

    if user.authenticate(params[:password])

    # log our user in! create the session
      session[:user_id] = user.id
      cookies[:movie] = "Don't look up"    
      # send a success response 
      render json: user, status: :ok
    else 
      render json: {error: "Auth creds not valid"}, status: :unauthorized
    end
  end

  def logout 
    # to logout a user, we want to clear the session
    # session[:user_id]
    session.delete :user_id
    # session[:user_id] = nil
  end
end



# session[]
# session[:user_id]
# session[]
#session[:user_id] = 