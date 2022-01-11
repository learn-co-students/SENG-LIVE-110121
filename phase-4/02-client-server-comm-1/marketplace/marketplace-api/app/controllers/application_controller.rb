class ApplicationController < ActionController::API


    private 

    def current_user # needs to change once authentication is set up
        User.find_by_username("aisayo")
    end
end
