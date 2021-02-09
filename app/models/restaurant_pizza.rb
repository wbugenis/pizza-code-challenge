class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant

  validates :price, numericality: {greater_than: 0 }
  validates :price, numericality: {less_than_or_equal_to: 30 } 
  validate :pizza_unique_to_restaurant, on: :create

  def pizza_unique_to_restaurant
    if restaurant.pizzas.include?(pizza)
      errors.add(:pizza, "already sold here")
    end
  end
    
end
