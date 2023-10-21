class Restaurant
  # GETTER (reader)
  attr_reader :name, :location #, :capacity
  # SETTER (writer)
  # attr_writer :capacity
  # reader + wrtier = accessor
  attr_accessor :capacity
  def initialize(name, location, genre, capacity)
    # instance variable, STATE
    @name = name
    @location = location
    @genre = genre
    @capacity = capacity
    @clients = []
    p "Self in the initilialize method is the instance itself: #{self}"
  end

  # BEHAVIOR
  def open?
    now = Time.now.hour
    now > 20 && now < 24
  end

  def closed?
    p "Self in the closed? method is the instance itself: #{self}"
    !open?
  end

  def book(client)
    @clients << client
  end

  p "Self is the class: #{self}."

  # CLASS METHOD
  def self.categories
    p "this variable: #{@clients}  is not defined"
    ["french", "american", "chinese", "japanese"]
  end
end