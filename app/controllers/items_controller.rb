class ItemsController < ApplicationController
  def new
  end

  def create
    @list = List.find(params[:list])
    @item = Item.new(item_params)
    @item.list_id = @list.id
    @item.user_id = current_user.id
    if @item.save!
      redirect_to list_path(@list), notice: "Item added to list."
    else
      render :new, notice: "Something went wrong..."
    end
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(venue_params)
      redirect_to venue_path(@venue)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(params[:list])
  end

  def pick
    item = Item.find(params[:id])
    if item.buyer.nil?
      item.buyer = current_user.id
    else
      item.buyer = nil
    end
    item.save!
    redirect_to lists_path
  end

  def item_params
    params.require(:item).permit(:item_name, :description, :link, :price)
  end
end
