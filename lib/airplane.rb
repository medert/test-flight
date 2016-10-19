require 'pry'

class Airplane
  attr_accessor :type, :wing_load, :horsepower, :fuel, :engine
  def initialize (type, wing_load, horsepower, fuel)
    @type = type
    @wing_load = wing_load
    @horsepower = horsepower
    @engine = false
    @ground = true
    @fuel = fuel
  end

  def start
    if @engine == false && @fuel >= 2
      @engine = true
      @fuel -= 2
      return 'Airplane started'
    elsif @engine == true
      return 'Airplane is already started'
    else
      return 'Not enough fuel to start'
    end
  end

  def takeoff
    if @engine == true && @fuel >= 2 && @ground == true
      @engine = true
      @ground = false
      @fuel -= 2
      return "Airplane took off!"
    elsif @engine == false && @ground == true
      return "Engine is turned off. Start the engine!"
    else
      return "Not enough fuel to takeoff!"
    end
  end

  def land
    if @engine == true && @ground == false && @fuel >= 3
      @engine = false
      @ground = true
      @fuel -= 3
      return 'Landed safely!'
    elsif @engine == true && @ground == false && @fuel < 3
      return 'Not enough fuel to land!'
    elsif @ground == true && @engine == true
      return 'The plane is on the ground!'
    elsif @engine == false && @ground == true
      return 'The engine is turned off! The plane is on the ground!'
    else
      return 'Check for error!'
    end
  end
end

# code execution

my_plane = Airplane.new('cesna', 10, 150, 10)
puts my_plane.start
puts my_plane.takeoff
puts my_plane.land
