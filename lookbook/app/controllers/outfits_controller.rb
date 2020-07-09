class OutfitsController < ApplicationController

    def show
        outfit = Outfit.find(params[:id])
        render json: outfit
    end

    def create
        outfit = Outfit.create(outfit_params)
        render json: outfit
    end

    def destroy
        outfit = Outfit.find(params[:id])
        outfit.destroy
        render json: outfit
    end

    def update
        outfit = Outfit.find(params[:id])
        outfit.update(outfit_params)

        render json: outfit
    end

    private
    def outfit_params
        params.permit(:name, :user_id)
    end
end
