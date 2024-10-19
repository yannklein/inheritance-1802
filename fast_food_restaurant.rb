require_relative "restaurant"

class FastFoodRestaurant < Restaurant
  def initialize(name, location, capacity, category, prep_time)
    super(name, location, capacity, category)
    @clients = []
    # CAREFUL!! 
    # super 
    # # is the same as 
    # super(name, location, capacity, category, prep_time)
  end

  def open?
    evening = super()
    morning = Time.now.hour >= 8 && Time.now.hour <= 12
    return evening || morning
  end
end