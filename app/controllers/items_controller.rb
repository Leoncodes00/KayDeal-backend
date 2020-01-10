class ItemsController < ApplicationController
    def index 
        render :json => Item.all 
    end

    def create 
        @item = Item.create(set_params_item)
    end

    def show
        render :json => Item.find(params[:id]) 
    end

    private
    def set_params_item 
        params.require(:item).permit(:user_id, :buyer_id, :image, :name, :price)
    end
end
