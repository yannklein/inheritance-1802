require_relative "restaurant"
require_relative "chef"

class FastFoodRestaurant < Restaurant
  attr_reader :name, :location, :chef
  attr_accessor :capacity
  def initialize(name, location, genre, capacity, prep_time, chef_name)
    # call the Restaurant's initialize
    # super in a instance method, calls the same name instance method of the parent class
    # CAREFUL
    # if you call super without (), super takes automatocially
    # the arguments of the method it is called in
    # super   ---> super(name, location, genre, capacity, prep_time, chef_name)
    # super() ---> super()
    # super(name, location, genre, capacity) ---> super(name, location, genre, capacity)
    # ##
    super(name, location, genre, capacity)
    # @name = name
    # @location = location
    # @genre = genre
    # @capacity = capacity
    # @clients = []
    @prep_time = prep_time
    @chef = Chef.new(chef_name, self)
  end

  def open?
    now = Time.now.hour
    (now > 8 && now < 14) || super
  end

  def book(new_client)
    new_client = new_client.downcase
    super(new_client)
  end
end