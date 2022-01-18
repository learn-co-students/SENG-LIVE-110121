class CategoriesController < ApplicationController

    def index 
        render json: Category.all, include: ['items.seller', 'items.buyer']
    end
end
