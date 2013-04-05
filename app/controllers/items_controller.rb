class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.new(params[:item])
    @item.save

    redirect_to item_url(@item)
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id]).destroy

    redirect_to items_url
  end
end
