class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    private 

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity 
    end

    def current_user # needs to change once authentication is set up
        User.find_by_username("aisayo")
    end
end
