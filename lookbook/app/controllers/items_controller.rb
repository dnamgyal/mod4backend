class ItemsController < ApplicationController


    def show
        item = Item.find(params[:id])
        render json: item
    end
    def create
        item = Item.create(item_params)
        render json: item
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: item
    end


    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: item
    end


    private
    def item_params
        params.permit(:name, :category, :brand, :image, :user_id)
    end
end
