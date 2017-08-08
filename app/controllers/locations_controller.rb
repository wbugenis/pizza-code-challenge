class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    redirect_to @location
  end

  def show
    @location = Location.find(params[:id])
  end

  def index
    @locations = Location.all
  end

  private
  def location_params
    params.require(:location).permit(:name,:address)
  end
end
