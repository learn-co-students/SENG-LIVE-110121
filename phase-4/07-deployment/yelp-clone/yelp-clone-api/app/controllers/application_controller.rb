class ApplicationController < ActionController::API

    private

    def current_user # eventually this will logged in user 
        User.last # not dynamic at 
    end
end
