require_relative 'restaurant'

class FancyRestaurant < Restaurant
  attr_reader :name, :location
  attr_accessor :capacity

  # p "in the class: #{self}"

  def initialize(name, cuisine, location, capacity, chef_name, rating)
    super(name, cuisine, location, capacity, chef_name)
    @clients = []
    # p "in the instance method: #{self}" #=> self is the instance
  end

  def open?
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def closed?
    !open?
  end

  def book(new_client)
    @clients << new_client
  end
end