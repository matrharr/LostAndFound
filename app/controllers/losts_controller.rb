class LostsController < ApplicationController

  def index
    @lost_items = Lost.all
  end

  def show
    @lost_item = Lost.find()
  end

  def lost_search
  end

  def search_results
  end

  def new
    @lost = Lost.new()
  end

  def create
    @lost_item = Lost.new(lost_params)
  end

  private
  def lost_params
    params.require(:lost_item).permit(:user_id, :title,:brand, :category, :type, :color, :description, :location)
  end
end