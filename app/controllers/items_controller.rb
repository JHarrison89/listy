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
    @list = List.find_by_id(params[:list_id])
    @item = Item.find_by_id(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def show
    @item = Item.find_by_id(param[:id])
  end

  def update
    @item = Item.find(params[:id])
    @list = List.find(params[:list_id])
    if @item.update(item_params)
      redirect_to list_path(@list), notice: "Item updated."
    else
      render :new, notice: "Something went wrong..."
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(params[:list_id]), notice: "Item deleted..."
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

  private

  # PARAMS

  def item_params
    params.require(:item).permit(:item_name, :description, :link, :price)
  end
end
