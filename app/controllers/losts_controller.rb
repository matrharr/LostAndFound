class LostsController < ApplicationController

  def index
    @lost_items = lost.all
  end

  def show
    @lost_item = lost.find()
  end

  def lost_search
  end

  def search_results
  end

  def new
    @lost = Lost.new()
  end

  def create
    @lost_item = lost.new(lost_params)
  end

  private
  def lost_params
    params.require(:lost_item).permit(:user_id, :title,:brand, :category, :type, :color, :description, :location)
  end
end