class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :authenticate_user
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


    private 

    def authenticate_user 
        render json: {error: "Not authorized"}, status: :unauthorized unless current_user 
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity 
    end

    def record_not_found(error)
        render json: {error: error.message}, status: :unprocessable_entity
    end

    def current_user # needs to change once authentication is set up
        User.find_by_id(session[:user_id])
    end
end
