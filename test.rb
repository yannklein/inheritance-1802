require_relative "restaurant"

le_cantina = Restaurant.new("Le Cantina", "Tokyo", "french", 12)
# p le_cantina

puts "The restaurant #{le_cantina.name} is in #{le_cantina.location} (capacity: #{le_cantina.capacity} people)."
le_cantina.capacity += 10
puts "The restaurant #{le_cantina.name} is in #{le_cantina.location} (capacity: #{le_cantina.capacity} people)."

puts "#{le_cantina.name} is #{le_cantina.closed? ? "closed" : "opened"}."

le_cantina.book("Taka")
le_cantina.book("Raecine")
le_cantina.book("Jane")
p le_cantina