class ItemsController < ApplicationController
    # skip_before_action :authenticate_user, only: :index
    before_action :set_item, only: [:show, :update, :destroy]
    before_action :is_authorized, only: [:update, :destroy]
    
    def index
        render json: Item.all.where(sold: false).includes(:categories)
    end

    def show 
        if @item 
            render json: @item
        else 
            render json: { error: "Item not found" }, status: :not_found
        end
    end

    def create 
        @item = current_user.sold_items.create!(item_params)
        render json: @item, status: :created 

    rescue ActiveRecord::RecordInvalid => invalid 
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
    
    def update 
        if @item
            if @item.update(item_params)
            render json: @item, status: :ok
            else 
                render json: {error: @item.errors.full_messages}
            end 
        else  
            render json: {error: "This item does not exist"}, status: :not_found
        end
    end

    def destroy 
        if @item 
            @item.destroy 
            head :no_content 
        else  
            render json: {error: "This item does not exist"}, status: :not_found
        end
    end

    private 

    def set_item 
        @item = Item.find_by_id!(params[:id])
    end

    def is_authorized 
        # going to check if the current_user is the seller of the item that is being modified, or if the current user is an admin
        permitted = current_user.admin? || @item.seller == current_user 
        render json: {error: "Accessibility is not permitted"}, status: :forbidden unless permitted
    end

    def item_params 
        params.permit(:name, :price, :desc)
    end
end
