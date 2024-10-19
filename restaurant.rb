require_relative "chef"

class Restaurant
  attr_reader :clients, :name, :location, :chef
  attr_accessor :capacity # R + W
  def initialize(name, location, capacity, category, chef_name)
    # STATES
    @name = name
    @location = location
    @capacity = capacity
    @category = category
    @clients = []
    @chef = Chef.new(chef_name, self) # instance of chef

    # self is cindys (the instance of Restaurant)
    # p "self in an instance method:", self
  end

  # BEHAVIOR
  def open?
    # self is cindys (the instance of Restaurant)
    # p "self in an instance method:", self
    evening = Time.now.hour >= 18 && Time.now.hour <= 22

    return evening
  end

  def close?
    !open?
  end

  def book(client_name)
    @clients << client_name
  end

  def clients_list
    @clients
  end

  # self is Restaurant
  # p "self in a class:", self

  def self.categories
    # p "self in a class method:", self
    ["Dessert", "Breakfast", "Drinks"]
  end
end