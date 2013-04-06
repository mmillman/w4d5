class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.new(params[:item])

    if @item.save
      redirect_to item_url(@item)
    else
      render :new
    end
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
