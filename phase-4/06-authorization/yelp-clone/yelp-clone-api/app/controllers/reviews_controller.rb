class ReviewsController < ApplicationController

    def create
        # business = Business.find(params[:business_id])
        review = current_user.reviews.create(business: Business.last.id, review_params)
    end

# nested route 
# /businesses/:business_id/reviews 

#{ id: 4 }
    private 

    # strong params should just restricted to data incoming through a request 
    def review_params 
        params.permit(:content)
    end
end
