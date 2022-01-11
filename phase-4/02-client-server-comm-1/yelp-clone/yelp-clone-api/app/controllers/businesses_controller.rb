class BusinessesController < ApplicationController

    def index # /businesses 
        render json: Business.all 
    end

    def show # /businesses/:id => return is the busines with the given id 
        business = Business.find(params[:id])
        render json: business 

    rescue ActiveRecord:RecordNotFound => error 
        render json: {error: error.message}
    end
end
