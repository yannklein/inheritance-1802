require_relative 'restaurant'
require_relative 'chef'
require 'json'

shakeshack = Restaurant.new("Shake Shack", "Ebisu", 30, "Burger", "Martin")
kfc = Restaurant.new("KFC", "Meguro", 10, "Burger", "Rei")
restaurants = [shakeshack, kfc]
# restaurants is an array of instances of Restaurant

# puts "#{shakeshack.name} is in #{shakeshack.city}"

puts "#{shakeshack.name} can hosts up to #{shakeshack.capacity} people."

shakeshack.capacity += 10 

# puts "#{shakeshack.name} can hosts up to #{shakeshack.capacity} people."

# puts shakeshack.open?
# puts shakeshack.closed?

# puts "#{shakeshack.name} is #{shakeshack.open? ? "open" : "closed"} now."

shakeshack.book("Rachel")
shakeshack.book("Javier")
shakeshack.book("Pedro")

# p shakeshack.clients

# p Restaurant.categories

# Restaurant.show_names(restaurants)

# p Time.now
# p JSON.parse("{}")

# martin = Chef.new("Martin", shakeshack)

# p martin
# p martin.restaurant

p shakeshack.chef

p shakeshack.chef.name
p kfc.chef.name
