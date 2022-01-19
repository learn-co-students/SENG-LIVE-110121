class SessionsController < ApplicationController

  # we are setting a new session in the session hash
  def login # '/login', 
    user = User.find_by_username!(params[:username])
    if user.authenticate(params[:password])
      session[:user_id] = user.id # logging our user in IMPORTANT!!! 
      render json: user, status: :ok
    else 
      render json: {error: "Auth creds not valid"}, status: :unauthorized
    end
  end

  def logout 
    # to logout a user, we want to clear the session
    # session[:user_id]
    session.delete(:user_id)
    # session[:user_id] = nil
  end
end



# session is a value that is set on the  back end 
# cookies, live on our browser 



# session[]
# session[:user_id]
# session[]
#session[:user_id] = 