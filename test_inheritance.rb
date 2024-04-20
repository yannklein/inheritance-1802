require_relative 'fast_food_restaurant'
require_relative 'fancy_restaurant'

mcdo = FastFoodRestaurant.new("Mc Do", "Meguro", 100, "burger", 10)

puts "#{mcdo.name} is in #{mcdo.city}"

puts "#{mcdo.name} can host up to #{mcdo.capacity} people."

puts "#{mcdo.name} is #{mcdo.open? ? "open" : "closed"} now."


land = FancyRestaurant.new("LAND", "Meguro", 10, "curry", 2)

puts "#{land.name} is in #{land.city}"

puts "#{land.name} can host up to #{land.capacity} people."

mcdo.book("Senie")
mcdo.book("Rachel")
land.book("Dianna")
land.book("Yoosun")

mcdo.print_clients
land.print_clients