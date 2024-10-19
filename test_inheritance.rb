require_relative "fancy_restaurant"
require_relative "restaurant"
require_relative "fast_food_restaurant"
require "json"

fancy_cindys = FancyRestaurant.new("Cindy's table", "Yokohama", 10, "Dessert", 3)

p fancy_cindys.name
p fancy_cindys.open?

fancy_cindys.book("Sarah")
fancy_cindys.book("Jasmine")
fancy_cindys.book("Allan")

p fancy_cindys.clients_list

wendys = FastFoodRestaurant.new("Wendy's", "Shibuya", 40, "Burger", 10)

p wendys.name
p wendys.open?

wendys.book("Rayz")
wendys.book("Alex")

p wendys.clients_list

# Class methods
p Time.now
p JSON.parse("{}")

p Restaurant.categories
p FancyRestaurant.categories