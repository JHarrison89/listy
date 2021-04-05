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
    item.buyer = current_user.id
    item.save!
  end
end
