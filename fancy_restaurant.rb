class FancyRestaurant
  attr_reader :name, :location
  attr_accessor :capacity
  def initialize(name, location, genre, capacity, stars)
    @name = name
    @location = location
    @genre = genre
    @capacity = capacity
    @clients = []
    @stars = stars
  end

  def open?
    now = Time.now.hour
    now > 20 && now < 24
  end

  def closed?
    !open?
  end

  def book(client)
    @clients << client
  end
end