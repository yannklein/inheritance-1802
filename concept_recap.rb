class Car #=> Car is a {Class}
  def initialize(color) #=> initialize is the {Constructor} of the Car class
    @color = color #=> color is an {Instance Variable}, it's a variable of an instance of Car, it characterizes the instance
    @running = false #=> running is an {Instance Variable}, it's a variable of an instance of Car, it characterizes the instance
    # => instance variables are also called {States} of the instance of Car
  end

  def start_engine #=> start_engine is an {Instance Method}, it is a method that is called on an instance of Car
    @running = true
  end
  # => instance methods are also called {Behaviours} of the instance of Car

  def self.parts #=> parts is a {Class Method}, it is a method that is called on the class Car
    ["wheels", "engine", "seats", "body"]
  end
end

