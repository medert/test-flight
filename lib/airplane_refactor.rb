require 'pry'

# Refactoring RSpec testing using 'let'

class Airplane_2
  attr_accessor :type, :horsepower, :wind_load, :fuel, :engine

  def initialize (type, horsepower, wind_load, fuel)
    @type = type
    @horsepower = horsepower
    @wind_load = wind_load
    @fuel = fuel
    @engine = false
    @ground = true
  end

  def start
    if @engine == false && @fuel >= 2
      @engine = true
      @fuel -= 2
      return 'Engine is on!'
    else
      return 'Not enough fuel to start the engine!'
    end
  end

  def takeoff
    if @engine == true && @fuel >= 2
      @ground = false
      @fuel -= 2
      return 'The plane in the air!'
    else
      return 'Not enough fuel to takeoff'
    end
  end

  def land
    if @engine == true && @fuel >= 2 && @ground == false
      @ground = true
      @fuel -= 2
      return 'The plane landed safely!'
    elsif @engine == true && @ground == false && @fuel < 2
      return 'Not enough fuel to land!'
    elsif @ground == true
      return 'The plane is on the ground!'
    else
    end
  end
end

plane = Airplane_2.new('cesna', 10, 150, 10)
plane.start
plane.takeoff
plane.land
# binding.pry
