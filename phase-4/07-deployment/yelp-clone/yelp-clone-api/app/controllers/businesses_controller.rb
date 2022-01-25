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

    def create 
        business = Business.create(business_params)

        if business.valid? 
            render json: business 
        else 
            render json: {error: business.errors.full_messages}
        end
    end

    private 

    def business_params
        params.permit(:name, :zip_code, :city, :state, :category)
    end
end
