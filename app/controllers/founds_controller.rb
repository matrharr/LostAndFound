class FoundsController < ApplicationController

  def index
    @found_items = Found.all
  end

  def show
    @found_item = Found.find(params[:id])
  end

  def found_search
    #POST
    @found_items = Found.where()
  end

  def search_results
    #Display Results
  end

  def new
    #Form for new found item
    @found = Found.new()
  end

  def create
    #POST to create new found item
    @found_item = Found.new(found_params)
  end

  private
  def found_params
    params.require(:found_item).permit(:user_id, :title,:brand, :category, :type, :color, :description, :location, :photo)
  end
end