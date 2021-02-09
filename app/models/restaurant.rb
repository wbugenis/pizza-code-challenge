class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_price
        (restaurant_pizzas.sum{ |pizza| pizza.price }/pizzas.count.to_f).round(2)
        #wanted to force showing two decimals on this float :(
    end
end
