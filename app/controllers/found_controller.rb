class FoundController < ApplicationController
  def index
  end

  def new

  end


  def search_results
    p params
  end

  def show
    @found = Found.find_by(params[:id])
    p "8" * 100
    p @found
  end

  def create
    @found = Found.new(found_params)
    if @found.save
    redirect_to root_path
    else

    end
  end

  private

  def found_params
    params.require(:found).permit(:title, :description, :photo)
  end

end