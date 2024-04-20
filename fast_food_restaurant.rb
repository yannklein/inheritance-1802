require_relative 'restaurant'

class FastFoodRestaurant < Restaurant
  def initialize(name, city, capacity, category, prep_time)
    @prep_time = prep_time
    # super is a call to the method in the parent class that has the same name as current method (in our case initialize)
    super(name, city, capacity, category)
    
    # if call super without args and without (), it take the current method params as arguments. Put () to super if you don't want to pass any argument.
  end

  def open?
    super || (Time.now.hour >= 8 && Time.now.hour <= 13)
  end
end