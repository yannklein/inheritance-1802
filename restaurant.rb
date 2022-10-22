require_relative 'chef'

class Restaurant
  attr_reader :name, :location, :chef
  attr_accessor :capacity

  # p self
  # => Restaurant

  def initialize(name, cuisine, location, capacity, chef_name)
    @name = name
    @cuisine = cuisine
    @location = location
    @capacity = capacity
    @chef = Chef.new(chef_name, self)
    @clients = []
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
  
  def self.categories # => Restaurant.categories
    ["italian", "japanese", "fast food"]
  end
end
