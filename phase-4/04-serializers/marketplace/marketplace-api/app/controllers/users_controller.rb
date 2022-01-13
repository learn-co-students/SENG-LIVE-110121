class UsersController < ApplicationController

    def create 
        user = User.create!(user_params)
        render json: user, status: :created 
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy 
        head :no_content 
    rescue ActiveRecord::RecordNotFound => error 
       render json: {error: error.message}, status: :not_found
    end


    private 

    def user_params
        params.permit(:username, :email)
    end
end
