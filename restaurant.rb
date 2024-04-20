require_relative 'chef'

class Restaurant
  attr_reader :name, :city, :category, :clients
  # attr_reader + attr_writer = attr_accessor
  attr_accessor :capacity

  p "Self inside a class is: #{self}"

  def initialize(name, city, capacity, category, chef_name)
    # instance variables (STATES)
    @name = name
    @city = city
    @capacity = capacity
    @category = category
    @clients = []
    # self here represents the instance of Restaurant
    @chef = Chef.new(chef_name, self)
  end

  def closed?
    !open?
  end

  def open?
    p "Self inside an instance method is: #{self}"
    (Time.now.hour >= 17 && Time.now.hour <= 21)
  end

  def book(new_client)
    @clients << new_client
  end

  def print_clients
    puts @clients
  end

  def self.categories
    ["italian", "chinese", "peruvian"]
    # @variables don't work here!
  end

  def self.show_names(restos)
    restos.each do |resto|
      # resto is ann instance of Restaurant
      puts resto.name
    end
  end

  def chef
    @chef
  end
end