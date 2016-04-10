include ApplicationHelper

class LostsController < ApplicationController

  def index
    @lost_items = Lost.all
  end

  def show
    lost_item = Lost.find(params[:id])
    found_items = Found.all

    @matches = []
    found_items.each do |found_item|
      if get_str_cosine(lost_item.description, found_item.description) > 0.5
        @matches << found_item
      end
    end
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