require_relative 'restaurant'

mcdonalds = Restaurant.new("Mc Donald's", "Fast Food", "Meguro", 50)
# p mcdonalds

puts "#{mcdonalds.name} is in #{mcdonalds.location} and can hold #{mcdonalds.capacity} people"
mcdonalds.capacity += 100
puts "#{mcdonalds.name} is in #{mcdonalds.location} and can hold #{mcdonalds.capacity} people"

puts mcdonalds.open? 
puts mcdonalds.closed? 

p mcdonalds
mcdonalds.book("Jeremy")
mcdonalds.book("Yvonne")
mcdonalds.book("Tanner")
p mcdonalds
