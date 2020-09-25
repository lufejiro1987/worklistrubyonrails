class ItemsController < ApplicationController
    def new
        @item = Item.new
        @list = List.find(params[:list_id])
    end
    def create
        @item = Item.new(item_params)
        @item.list_id = params[:list_id]
    end

    private
    def item_params
        params.require(:item).permit(:name)
    end
end