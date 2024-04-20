require_relative 'restaurant'
class FancyRestaurant < Restaurant
  attr_reader :name, :city, :category, :clients
  attr_accessor :capacity
  def initialize(name, city, capacity, category, stars)
    @stars = stars
    @name = name
    @city = city
    @capacity = capacity
    @category = category
    @clients = []
  end

  def print_clients
    puts "Access restricted!"
  end
end