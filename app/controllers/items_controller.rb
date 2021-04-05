class ItemsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
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
end
