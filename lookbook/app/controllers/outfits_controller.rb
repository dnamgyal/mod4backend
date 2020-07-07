class OutfitsController < ApplicationController

    def show
        outfit = Outfit.find(params[:id])
        render json: outfit
    end
end
