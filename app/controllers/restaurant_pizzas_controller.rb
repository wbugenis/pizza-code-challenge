class RestaurantPizzasController < ApplicationController

    def index
        @restaurant_pizzas = RestaurantPizza.all
    end
    
    def show
        @restaurant_pizza = RestaurantPizza.find(params[:id])
    end
    
    def new
        @restaurant_pizza = RestaurantPizza.new
        @restaurants = Restaurant.all
        @pizzas = Pizza.all
    end
    
    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)

        if @restaurant_pizza.valid?
            redirect_to restaurant_path(@restaurant_pizza.restaurant)
        else 
            flash[:errors] = @restaurant_pizza.errors.full_messages
            redirect_to new_restaurant_pizza_path
        end

    end
    
    # def edit
    #     @restaurant_pizza = RestaurantPizza.find(params[:id])
    # end
      
    # def update
    #     @restaurant_pizza = RestaurantPizza.find(params[:id])
    #     @restaurant_pizza.update(restaurant_pizza_params)
    #     redirect_to restaurant_pizza_path(@restaurant_pizza)
    # end
    
    # def destroy
    #     RestaurantPizza.find(params[:id])
    #     redirect_to restaurant_pizza_path
    # end
    
    private
    
    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
    end
    
end
