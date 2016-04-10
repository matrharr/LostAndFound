class FoundsController < ApplicationController

  def index
    @found_items = Found.all
  end

  def search_results

    search = params[:search]
    found_items = Found.all

    @matches = {}

    found_items.each do |item|
        @matches[item] = get_str_cosine(search, item.description)
      end

      @matches = @matches.sort_by {|_key, value| value}.reverse

  end


  def show
    @found_item = Found.find(params[:id])
  end

  def found_search
    #POST
    @found_items = Found.where()
  end


  def new
    #Form for new found item
  end

  def create
    #POST to create new found item
    @found_item = Found.new(found_params)
    if @found_item.save
      redirect_to root_path
    else

    end
  end

  private
  def found_params
    params.require(:founds).permit(:user_id, :title, :brand, :category, :kind, :color, :description, :location, :photo)
  end
end