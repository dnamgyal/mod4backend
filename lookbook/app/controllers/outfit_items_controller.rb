class OutfitItemsController < ApplicationController

    def create
        outfitItem = OutfitItem.create(outfit_item_params)
        render json: outfitItem
    end

    def destroy
        outfitItem = OutfitItem.find(params[:id])
        outfitItem.destroy
        render json: outfitItem
    end

    private

    def outfit_item_params
        params.permit(:item_id, :outfit_id)
    end

end
