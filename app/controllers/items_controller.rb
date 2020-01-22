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

    def edit 
        render :json => Item.find(params[:id]) 
    end

    def update 
        @item = Item.find(params[:id]) 
        @item.update(set_params_item)
        render :json => @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
      end

    private
    def set_params_item 
        params.require(:item).permit(:user_id, :buyer_id, :image, :name, :price)
    end
end
