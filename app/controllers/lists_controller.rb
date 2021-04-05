class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
  end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
