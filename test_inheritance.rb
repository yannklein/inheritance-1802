require 'json'
require_relative "fancy_restaurant"
require_relative "fast_food_restaurant"
require_relative "restaurant"
require_relative "chef"

# locale = FancyRestaurant.new("Locale", "Meguro", "farm-to-table", 10)
# p locale
bk = FastFoodRestaurant.new("Burger King", "Shibuya", "american", 50, 10, "Rashad")
# p bk

puts "The restaurant #{bk.name} is in #{bk.location} (capacity: #{bk.capacity} people)."
puts "#{bk.name} is #{bk.closed? ? "closed" : "opened"}."


bk.book("Taka")
bk.book("Raecine")
bk.book("Jane")
p bk

p Time.now
p JSON.parse("{}")

p Restaurant.categories

# chef = Chef.new("Rashad", bk)
# p chef

p bk.chef
p bk.chef.restaurant