class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # def new
  #   @restaurant = Restaurant.new
  # end

  # def create
  #   @restaurant = Restaurant.create(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end
  
  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @Restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   Restaurant.find(params[:id])
  #   redirect_to restaurants_path
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
