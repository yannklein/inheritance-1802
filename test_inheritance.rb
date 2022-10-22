require_relative 'fast_food_restaurant'
require_relative 'fancy_restaurant'
require_relative 'restaurant'
require_relative 'chef'
require 'json'

mcdonalds = FastFoodRestaurant.new("Mc Donald's", "Fast Food", "Meguro", 50, "Danielle", 5)
p mcdonalds

p mcdonalds.open?
p mcdonalds.closed?

olive_garden = FancyRestaurant.new("Olive garden", "Italian", "Tampa, Florida", 20, "Danielle", 5)
p olive_garden
p olive_garden.chef

p olive_garden.chef.restaurant

p Time.class
p Time.now
p JSON.parse("{}")

p Restaurant.categories
# => ["italian", "japanese", "fast food"]