class ReviewsController < ApplicationController


    def create #nick was helping with this 
        review = current_user.reviews.create()
    end
end
