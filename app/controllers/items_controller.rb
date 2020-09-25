class ItemsController < ApplicationController
    def new
        @item = Item.new
        @list = List.find(params[:list_id])
    end
    def create
        @item = Item.new(item_params)
        @item.list_id = params[:list_id]

        if @item.save
            redirect_to list_path(params[:list_id]), notice: 'item añadido'
        else
            render :new
        end
    end

    def update
        @item = Item.find(params[:id])
        @item.update(done: !@item.done)
        redirect_to list_path(params[:list_id])
    end

    private
    def item_params
        params.require(:item).permit(:name)
    end
end