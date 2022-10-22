require_relative 'restaurant'

class FastFoodRestaurant < Restaurant
  attr_reader :name, :location
  attr_accessor :capacity

  def initialize(name, cuisine, location, capacity, chef_name, prep_time)
    # CAREFUL 
    # super == super(name, cuisine, location, capacity, prep_time)
    # if you want to call super without any argument
    # super()
    super(name, cuisine, location, capacity, chef_name)
    @prep_time = prep_time
  end

  def open?
    super || Time.now.hour >= 8 && Time.now.hour <= 12
  end
end