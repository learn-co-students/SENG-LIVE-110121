class UsersController < ApplicationController

    def create 
        #username email 
        # goal is to create a new user 
        # handle valid/invalid data 

        user = User.create!(user_params)
        render json: user, status: :created 
    # rescue ActiveRecord::RecordInvalid => invalid 
    #     render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity 
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
