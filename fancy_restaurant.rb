require_relative "restaurant"

class FancyRestaurant < Restaurant
  def initialize(name, location, capacity, category, stars)
    super(name, location, capacity, category)
    @stars = stars
  end

  def clients_list
    "Sorry, private info!"
  end
end