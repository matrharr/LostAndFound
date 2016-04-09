class FoundController < ApplicationController
  def index
  end

  def new

  end

  def show
    @found = Found.find(params[:id])
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