include ApplicationHelper

class LostsController < ApplicationController

  def index
    @lost_items = Lost.all
  end

  def show
    lost_item = Lost.find(params[:id])
    found_items = Found.all

    @matches = []
    @score = {}
    found_items.each do |found_item|
      if lost_item.category == found_item.category
        @score[found_item] = 0
        if lost_item.brand == found_item.brand
          @score[found_item] += 1
        end
        if lost_item.color == found_item.color
          @score[found_item] += 0.5
        end
        if lost_item.kind == found_item.kind
          @score[found_item] += 0.75
        end
        @score[found_item] += get_str_cosine(lost_item.description, found_item.description)
      end
    end
    @score = @score.sort_by {|_key, value| value}.reverse
  end

  def new
    @lost = Lost.new()
  end

  def create
    @lost_item = Lost.new(lost_params)
    if @lost_item.save
      redirect_to losts_path
    else

    end
  end

  private
  def lost_params
    params.require(:lost_item).permit(:user_id, :title, :brand, :category, :kind, :color, :description, :location, :photo, :reward)
  end
end